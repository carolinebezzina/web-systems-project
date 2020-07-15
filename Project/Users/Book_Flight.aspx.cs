using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace Project.Users
{
    public partial class Book_Flight : System.Web.UI.Page
    {

        static string seatSelection;
        static string seatString;
        static string flightPrice;
        static string cardExpFull;


        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();
        }

        protected void searchFlights(object sender, EventArgs e)
        {

            string flightConnString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection flightCon = new SqlConnection(flightConnString);
            string flightSql;
            flightSql = "SELECT flightid FROM Flights WHERE flightid=@flight_id";
            SqlCommand flightCmd = new SqlCommand(flightSql, flightCon);
            flightCmd.Parameters.AddWithValue("@flight_id", FlightIDTextBox.Text);

            using (flightCon)
            {
                flightCon.Open();
                SqlDataReader flightReader = flightCmd.ExecuteReader();
                if (flightReader.HasRows)
                {
                    flightReader.Read();

                    string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection(connString);
                    string sql = "SELECT [seat_string] FROM [Globalseats] WHERE (([flightdate] = @flightdate) AND ([flightid] = @flightid))";
                    string sql2 = "SELECT [price] FROM [Flights] WHERE ([flightid] = @flightid)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@flightid", FlightIDTextBox.Text);
                    cmd.Parameters.AddWithValue("@flightdate", DateTextBox.Text);
                    SqlCommand cmd2 = new SqlCommand(sql2, con);
                    cmd2.Parameters.AddWithValue("@flightid", FlightIDTextBox.Text);


                    using (con)
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                            reader.Read();
                        seatString = (reader["seat_string"]).ToString();
                        reader.Close();

                        SqlDataReader reader2 = cmd2.ExecuteReader();
                        if (reader2.HasRows)
                            reader2.Read();
                        flightPrice = (reader2["price"].ToString());
                        reader2.Close();
                        con.Close();
                    }
                    Error.Text = "Match Found.";

                    flightReader.Close();

                }
                else
                {
                    Error.Text = "No match!";
                }
            }

            flightPriceLabel.Text = ("Price for Selected Flight: $" + flightPrice);

            char[] seatArray = seatString.ToCharArray();


            char oneA = seatArray[0];
            char oneB = seatArray[1];
            char oneC = seatArray[2];
            char oneD = seatArray[3];
            char twoA = seatArray[4];
            char twoB = seatArray[5];
            char twoC = seatArray[6];
            char twoD = seatArray[7];
            char threeA = seatArray[8];
            char threeB = seatArray[9];
            char threeC = seatArray[10];
            char threeD = seatArray[11];
            char fourA = seatArray[12];
            char fourB = seatArray[13];
            char fourC = seatArray[14];
            char fourD = seatArray[15];
            char fiveA = seatArray[16];
            char fiveB = seatArray[17];
            char fiveC = seatArray[18];
            char fiveD = seatArray[19];
            char sixA = seatArray[20];
            char sixB = seatArray[21];
            char sixC = seatArray[22];
            char sixD = seatArray[23];


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
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void twoAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2A";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void threeAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3A";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fourAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4A";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fiveAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5A";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void sixAbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6A";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void oneBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void twoBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void threeBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fourBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fiveBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void sixBbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6B";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void oneCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void twoCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void threeCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fourCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fiveCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void sixCbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6C";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void oneDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "1D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void twoDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "2D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void threeDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "3D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fourDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "4D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void fiveDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "5D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void sixDbutton_Click(object sender, EventArgs e)
        {
            seatSelection = "6D";
            seatSelectionLabel.Text = "You Selected Seat: " + seatSelection;
        }

        protected void updateGlobalSeats_Click(object sender, EventArgs e)
        {
            char[] seatArray = seatString.ToCharArray();
            string updatedSeatString;

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

            updatedSeatString = new String(seatArray);

            string connString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            string sql = "UPDATE Globalseats SET seat_string = @SeatString WHERE flightid = @flightid";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@flightid", FlightIDTextBox.Text);
            cmd.Parameters.AddWithValue("@flightdate", DateTextBox.Text);
            cmd.Parameters.AddWithValue("@SeatString", updatedSeatString);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            string sql2 = "INSERT INTO Bookings (username,ccname,cctype,ccnum,ccexp,ccverify,flightid,flightdate,seatno,cost) VALUES (@username,@ccname,@cctype,@ccnum,@ccexp,@ccverify,@flightid,@flightdate,@seatno,@cost)";
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            cmd2.Parameters.AddWithValue("@username", User.Identity.Name);
            cmd2.Parameters.AddWithValue("@ccname", CardName.Text);
            cmd2.Parameters.AddWithValue("@cctype", CardType.Text);
            cmd2.Parameters.AddWithValue("@ccnum", CardNumber.Text);
            cmd2.Parameters.AddWithValue("@ccexp", cardExpFull);
            cmd2.Parameters.AddWithValue("@ccverify", CardSecurityCode.Text);
            cmd2.Parameters.AddWithValue("@flightid", FlightIDTextBox.Text);
            cmd2.Parameters.AddWithValue("@flightdate", DateTextBox.Text);
            cmd2.Parameters.AddWithValue("@seatno", seatSelection);
            cmd2.Parameters.AddWithValue("@cost", flightPrice);
            cmd2.ExecuteNonQuery();
            cmd2.Dispose(); 
            con.Close();
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cardExpFull = (CardExpiryMonth.Text + '/' + CardExpiryYear.Text);
            
            summaryFlightId.Text = FlightIDTextBox.Text;
            SummaryFlightDate.Text = DateTextBox.Text;
            summaryFlightPrice.Text = flightPrice;
            summarySeatSelection.Text = seatSelection;
            summaryCardName.Text = CardName.Text;
            summaryCardType.Text = CardType.Text;
            summaryCardNumber.Text = CardNumber.Text;
            summaryCardExpDate.Text = cardExpFull;
            summaryCardVerification.Text = CardSecurityCode.Text;
        }

        
        
        
        
    }
}