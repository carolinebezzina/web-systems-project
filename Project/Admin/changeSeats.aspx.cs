using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class changeSeats : System.Web.UI.Page
    {
        static string seatSelection;
        static string SeatNo;
        static char[] seatArray;
        string seatstring;
        static string booking_id;
        static string flightID;
        static string flightDate;
        char oneA;
        char oneB;
        char oneC;
        char oneD;
        char twoA;
        char twoB;
        char twoC;
        char twoD;
        char threeA;
        char threeB;
        char threeC;
        char threeD;
        char fourA;
        char fourB;
        char fourC;
        char fourD;
        char fiveA;
        char fiveB;
        char fiveC;
        char fiveD;
        char sixA;
        char sixB;
        char sixC;
        char sixD;

        protected void Button_Click(object sender, EventArgs e)
        {
            string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql;
            string sql2;
            sql = "SELECT flightid, flightdate, seatno FROM Bookings WHERE Id=@BookingID";
            sql2 = "SELECT seat_string FROM Globalseats WHERE flightid = @flight_id AND flightdate = @flight_date";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            cmd.Parameters.AddWithValue("@BookingID", BookingID.Text);
            booking_id = BookingID.Text;

            using (con)
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();

                    cmd2.Parameters.AddWithValue("@flight_id", reader["flightid"]);
                    flightID = reader["flightid"].ToString();
                    
                    cmd2.Parameters.AddWithValue("@flight_date", reader["flightdate"]);
                    flightDate = reader["flightdate"].ToString();

                    SeatNo = reader["seatno"].ToString();

                    reader.Close();

                    SqlDataReader reader2 = cmd2.ExecuteReader();

                    if (reader2.HasRows)
                    {
                        reader2.Read();
                        seatstring = (reader2["seat_string"]).ToString();

                        seatArray = seatstring.ToCharArray();

                        oneA = seatArray[0];
                        oneB = seatArray[1];
                        oneC = seatArray[2];
                        oneD = seatArray[3];
                        twoA = seatArray[4];
                        twoB = seatArray[5];
                        twoC = seatArray[6];
                        twoD = seatArray[7];
                        threeA = seatArray[8];
                        threeB = seatArray[9];
                        threeC = seatArray[10];
                        threeD = seatArray[11];
                        fourA = seatArray[12];
                        fourB = seatArray[13];
                        fourC = seatArray[14];
                        fourD = seatArray[15];
                        fiveA = seatArray[16];
                        fiveB = seatArray[17];
                        fiveC = seatArray[18];
                        fiveD = seatArray[19];
                        sixA = seatArray[20];
                        sixB = seatArray[21];
                        sixC = seatArray[22];
                        sixD = seatArray[23];

                        showButton();
                    }
                }
                else
                {
                    Error.Text = "No match!";
                }

                con.Close();
            }
        }

        void showButton()
        {
            if (oneA == 'Y')
            {
                oneAbutton.Visible = false;
            }
            else
            {
                oneAbutton.Visible = true;
            }

            if (oneB == 'Y')
            {
                oneBbutton.Visible = false;
            }
            else
            {
                oneBbutton.Visible = true;
            }

            if (oneC == 'Y')
            {
                oneAbutton.Visible = false;
            }
            else
            {
                oneCbutton.Visible = true;
            }

            if (oneD == 'Y')
            {
                oneDbutton.Visible = false;
            }
            else
            {
                oneDbutton.Visible = true;
            }

            if (twoA == 'Y')
            {
                twoAbutton.Visible = false;
            }
            else
            {
                twoAbutton.Visible = true;
            }

            if (twoB == 'Y')
            {
                twoBbutton.Visible = false;
            }
            else
            {
                twoBbutton.Visible = true;
            }

            if (twoC == 'Y')
            {
                twoCbutton.Visible = false;
            }
            else
            {
                twoCbutton.Visible = true;
            }

            if (twoD == 'Y')
            {
                twoDbutton.Visible = false;
            }
            else
            {
                twoDbutton.Visible = true;
            }

            if (threeA == 'Y')
            {
                threeAbutton.Visible = false;
            }
            else
            {
                threeAbutton.Visible = true;
            }

            if (threeB == 'Y')
            {
                threeBbutton.Visible = false;
            }
            else
            {
                threeBbutton.Visible = true;
            }

            if (threeC == 'Y')
            {
                threeCbutton.Visible = false;
            }
            else
            {
                threeCbutton.Visible = true;
            }

            if (threeD == 'Y')
            {
                threeDbutton.Visible = false;
            }
            else
            {
                threeDbutton.Visible = true;
            }

            if (fourA == 'Y')
            {
                fourAbutton.Visible = false;
            }
            else
            {
                fourAbutton.Visible = true;
            }

            if (fourB == 'Y')
            {
                fourBbutton.Visible = false;
            }
            else
            {
                fourBbutton.Visible = true;
            }

            if (fourC == 'Y')
            {
                fourCbutton.Visible = false;
            }
            else
            {
                fourCbutton.Visible = true;
            }

            if (fourD == 'Y')
            {
                fourDbutton.Visible = false;
            }
            else
            {
                fourDbutton.Visible = true;
            }

            if (fiveA == 'Y')
            {
                fiveAbutton.Visible = false;
            }
            else
            {
                fiveAbutton.Visible = true;
            }

            if (fiveB == 'Y')
            {
                fiveBbutton.Visible = false;
            }
            else
            {
                fiveBbutton.Visible = true;
            }

            if (fiveC == 'Y')
            {
                fiveCbutton.Visible = false;
            }
            else
            {
                fiveCbutton.Visible = true;
            }

            if (fiveD == 'Y')
            {
                fiveDbutton.Visible = false;
            }
            else
            {
                fiveDbutton.Visible = true;
            }

            if (sixA == 'Y')
            {
                sixAbutton.Visible = false;
            }
            else
            {
                sixAbutton.Visible = true;
            }

            if (sixB == 'Y')
            {
                sixBbutton.Visible = false;
            }
            else
            {
                sixBbutton.Visible = true;
            }

            if (sixC == 'Y')
            {
                sixCbutton.Visible = false;
            }
            else
            {
                sixCbutton.Visible = true;
            }

            if (sixD == 'Y')
            {
                sixDbutton.Visible = false;
            }
            else
            {
                sixDbutton.Visible = true;
            }
        }

        protected void oneAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1A";
        }

        protected void twoAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2A";
        }

        protected void threeAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3A";
        }

        protected void fourAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4A";
        }

        protected void fiveAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5A";
        }

        protected void sixAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6A";
        }

        protected void oneBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1B";
        }

        protected void twoBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2B";
        }

        protected void threeBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3B";
        }

        protected void fourBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4B";
        }

        protected void fiveBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5B";
        }

        protected void sixBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6B";
        }

        protected void oneCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1C";
        }

        protected void twoCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2C";
        }

        protected void threeCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3C";
        }

        protected void fourCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4C";
        }

        protected void fiveCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5C";
        }

        protected void sixCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6C";
        }

        protected void oneDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1D";
        }

        protected void twoDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2D";
        }

        protected void threeDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3D";
        }

        protected void fourDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4D";
        }

        protected void fiveDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5D";
        }

        protected void sixDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6D";
        }

        protected void updateGlobalSeats_Click(object sender, EventArgs e)
        {
            selectSeat();
            checkSeat();

            string updatedSeatString = new String(seatArray);

            string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql = "UPDATE Globalseats SET seat_string = @seat_string WHERE flightid = @flight_id AND flightdate = @flight_date";
            string sql2 = "UPDATE Bookings SET seatno = @seat_no WHERE Id=@BookingID";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            cmd.Parameters.AddWithValue("@seat_string", updatedSeatString);
            cmd.Parameters.AddWithValue("@flight_id", flightID);
            cmd.Parameters.AddWithValue("@flight_date", flightDate);
            cmd2.Parameters.AddWithValue("@seat_no", seatSelection);
            cmd2.Parameters.AddWithValue("@BookingID", booking_id);

            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();
            }

            Confirmation.Text = "Seat successfully changed.";
        }

        void selectSeat()
        {
            if (seatSelection == "1A")
            {
                seatArray[0] = 'Y';
            }

            if (seatSelection == "1B")
            {
                seatArray[1] = 'Y';
            }

            if (seatSelection == "1C")
            {
                seatArray[2] = 'Y';
            }

            if (seatSelection == "1D")
            {
                seatArray[3] = 'Y';
            }

            if (seatSelection == "2A")
            {
                seatArray[4] = 'Y';
            }

            if (seatSelection == "2B")
            {
                seatArray[5] = 'Y';
            }

            if (seatSelection == "2C")
            {
                seatArray[6] = 'Y';
            }

            if (seatSelection == "2D")
            {
                seatArray[7] = 'Y';
            }

            if (seatSelection == "3A")
            {
                seatArray[8] = 'Y';
            }

            if (seatSelection == "3B")
            {
                seatArray[9] = 'Y';
            }

            if (seatSelection == "3C")
            {
                seatArray[10] = 'Y';
            }

            if (seatSelection == "3D")
            {
                seatArray[11] = 'Y';
            }

            if (seatSelection == "4A")
            {
                seatArray[12] = 'Y';
            }

            if (seatSelection == "4B")
            {
                seatArray[13] = 'Y';
            }

            if (seatSelection == "4C")
            {
                seatArray[14] = 'Y';
            }

            if (seatSelection == "4D")
            {
                seatArray[15] = 'Y';
            }

            if (seatSelection == "5A")
            {
                seatArray[16] = 'Y';
            }

            if (seatSelection == "5B")
            {
                seatArray[17] = 'Y';
            }

            if (seatSelection == "5C")
            {
                seatArray[18] = 'Y';
            }

            if (seatSelection == "5D")
            {
                seatArray[19] = 'Y';
            }

            if (seatSelection == "6A")
            {
                seatArray[20] = 'Y';
            }

            if (seatSelection == "6B")
            {
                seatArray[21] = 'Y';
            }

            if (seatSelection == "6C")
            {
                seatArray[22] = 'Y';
            }

            if (seatSelection == "6D")
            {
                seatArray[23] = 'Y';
            }
        }

        void checkSeat()
        {
            if (SeatNo == "1A")
            {
                seatArray[0] = 'N';
            }
            else if (SeatNo == "1B")
            {
                seatArray[1] = 'N';
            }
            else if (SeatNo == "1C")
            {
                seatArray[2] = 'N';
            }
            else if (SeatNo == "1D")
            {
                seatArray[3] = 'N';
            }
            else if (SeatNo == "2A")
            {
                seatArray[4] = 'N';
            }
            else if (SeatNo == "2B")
            {
                seatArray[5] = 'N';
            }
            else if (SeatNo == "2C")
            {
                seatArray[6] = 'N';
            }
            else if (SeatNo == "2D")
            {
                seatArray[7] = 'N';
            }
            else if (SeatNo == "3A")
            {
                seatArray[8] = 'N';
            }
            else if (SeatNo == "3B")
            {
                seatArray[9] = 'N';
            }
            else if (SeatNo == "3C")
            {
                seatArray[10] = 'N';
            }
            else if (SeatNo == "3D")
            {
                seatArray[11] = 'N';
            }
            else if (SeatNo == "4A")
            {
                seatArray[12] = 'N';
            }
            else if (SeatNo == "4B")
            {
                seatArray[13] = 'N';
            }
            else if (SeatNo == "4C")
            {
                seatArray[14] = 'N';
            }
            else if (SeatNo == "4D")
            {
                seatArray[15] = 'N';
            }
            else if (SeatNo == "5A")
            {
                seatArray[16] = 'N';
            }
            else if (SeatNo == "5B")
            {
                seatArray[17] = 'N';
            }
            else if (SeatNo == "5C")
            {
                seatArray[18] = 'N';
            }
            else if (SeatNo == "5D")
            {
                seatArray[19] = 'N';
            }
            else if (SeatNo == "6A")
            {
                seatArray[20] = 'N';
            }
            else if (SeatNo == "6B")
            {
                seatArray[21] = 'N';
            }
            else if (SeatNo == "6C")
            {
                seatArray[22] = 'N';
            }
            else if (SeatNo == "6D")
            {
                seatArray[23] = 'N';
            }
        }
    }
}