using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication12
{
    public class DB
    {
        private static readonly string connstring =
            System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public DataSet selectItem()
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("select*from Customer", con);

                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }


        public bool insert_into_wallet(string CNIC)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("MyWallet", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;

                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format 
                if (Found == 2)
                {
                    return false;
                }
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }

        }

            // sign up
        public bool executeInsert(string CNIC, string name, string PhoneNo, string email, string password)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SignUp", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@NIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@PhoneNo", SqlDbType.VarChar, 12);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 10);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@NIC"].Value = CNIC;
                cmd.Parameters["@name"].Value = name;
                cmd.Parameters["@PhoneNo"].Value = PhoneNo;
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@password"].Value = password;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format 
                if (Found == 2)
                {
                    return false;
                }
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public bool checklogin(string NIC, string password)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("USER_LOGIN", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@NIC", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;
                // set parameter values

                cmd.Parameters["@NIC"].Value = NIC;
                cmd.Parameters["@password"].Value = password;
                cmd.ExecuteNonQuery();
                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    return false;
                }
                con.Close();
                return true;

            }
            catch (SqlException ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }



        public bool update_profile(string CNIC, string old_password, string new_password)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("update_Profile", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@NIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@oldpassword", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@New_Password", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@NIC"].Value = CNIC;
                cmd.Parameters["@oldpassword"].Value = old_password;
                cmd.Parameters["@New_Password"].Value = new_password;

                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    return false;
                }
                con.Close();
                return true;

            }
            catch (SqlException ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public DataSet SelectRoots(string departure_location, string arrival_location, DateTime bus_date) //to get the values of all the items from table Items and return the Dataset
        {
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connstring); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("allocation_of_time", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@busDate", SqlDbType.Date);

                cmd.Parameters["@Departure_location"].Value = departure_location;
                cmd.Parameters["@Arrival_location"].Value = arrival_location;
                cmd.Parameters["@busDate"].Value = bus_date;

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public DataSet booking(string ID, string departure_location, string aarrival_location, string bus_date)
        {
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connstring); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("booking", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ID", SqlDbType.VarChar, 12);
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@busDate", SqlDbType.Date);

                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@Departure_location"].Value = departure_location;
                cmd.Parameters["@Arrival_location"].Value = aarrival_location;
                cmd.Parameters["@busDate"].Value = bus_date;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        public bool selection_of_seats(string CNIC, string departure_location, string arrival_location, string Seat_No, string ID, string date)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("selectionofseat", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@ID", SqlDbType.VarChar, 12);
                cmd.Parameters.Add("@seat_no1", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Bus_date", SqlDbType.Date);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@seat_no1"].Value = Seat_No;
                cmd.Parameters["@Departure_location"].Value = departure_location;
                cmd.Parameters["@Arrival_location"].Value = arrival_location;
                cmd.Parameters["@Bus_date"].Value = date;
                cmd.ExecuteNonQuery();
                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    return false;
                }
                con.Close();
                return true;

            }
            catch (SqlException ex)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }


        public DataSet MyBookings(string CNIC)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("MyBookings", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    ds = null;
                }
                else
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public bool Generate_Tickets(string CNIC, string departure_loction, string arrival_location, string ID, string seat_no, string payment_type, string Bus_date)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("Buy_Tickets", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@ID", SqlDbType.VarChar, 12);
                cmd.Parameters.Add("@seat_no1", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Bus_date", SqlDbType.Date);
                cmd.Parameters.Add("@payment_Type", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@seat_no1"].Value = seat_no;
                cmd.Parameters["@Departure_location"].Value = departure_loction;
                cmd.Parameters["@Arrival_location"].Value = arrival_location;
                cmd.Parameters["@Bus_date"].Value = Bus_date;
                cmd.Parameters["@payment_Type"].Value = payment_type;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    return false;
                }
                con.Close();
                return true;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }


        public DataSet MyTickets(string CNIC)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Tickets", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    ds = null;
                }
                else
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }
        

        //  When Sign up will occur then this procedure will call and save data of wallet of specific CNIC
        public bool insert_into_wallet1(string CNIC)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("MyWallet", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                if (Found == 0)
                {
                    return false;
                }
                con.Close();
                return true;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }
        
        
        // When i will to functions.aspx then check_wallet1 will print all data
        public DataSet CheckWallet123(string CNIC)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("check_Wallet", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }


        // This function wil deduct amount
        public DataSet Check_Wallet1(string CNIC,string dep,string arr)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connstring);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("deduct_amount", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@CNIC", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@Departure_city", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Arrival_City", SqlDbType.VarChar, 20);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@CNIC"].Value = CNIC;
                cmd.Parameters["@Departure_city"].Value = dep;
                cmd.Parameters["@Arrival_City"].Value = arr;
                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value); //convert to output parameter to interger format
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("sql error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }


        // Update Time for Manager
        public DataSet update_routes_with_time(string departure_location, string arrival_location, DateTime bus_date, string busNo, string current_time_of_bus_no, string updated_time) //to get the values of all the items from table Items and return the Dataset
        {
            int Found = 0;
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connstring); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("updation_of_time", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@busDate", SqlDbType.Date);
                cmd.Parameters.Add("@Bus_No", SqlDbType.VarChar, 5);
                cmd.Parameters.Add("@actual_bus_time", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@updated_Bus_Time", SqlDbType.VarChar, 20);

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@Departure_location"].Value = departure_location;
                cmd.Parameters["@Arrival_location"].Value = arrival_location;
                cmd.Parameters["@busDate"].Value = bus_date;
                cmd.Parameters["@Bus_No"].Value = busNo;
                cmd.Parameters["@actual_bus_time"].Value = current_time_of_bus_no;
                cmd.Parameters["@updated_Bus_Time"].Value = updated_time;

                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value);
                if (Found == 0)
                {
                    ds = null;
                }
                else
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds; //return the dataset
        }


        // Delete route for Manager
        public DataSet delete_route(string departure_location, string arrival_location, DateTime bus_date, string busNo) //to get the values of all the items from table Items and return the Dataset
        {
            int Found = 0;
            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connstring); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Delete_Route", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Departure_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Arrival_location", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@busDate", SqlDbType.Date);
                cmd.Parameters.Add("@Bus_No", SqlDbType.VarChar, 5);
       

                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@Departure_location"].Value = departure_location;
                cmd.Parameters["@Arrival_location"].Value = arrival_location;
                cmd.Parameters["@busDate"].Value = bus_date;
                cmd.Parameters["@Bus_No"].Value = busNo;

                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@output"].Value);
                if (Found == 0)
                {
                    ds = null;
                }
                else
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds; //return the dataset
        }
    }
}