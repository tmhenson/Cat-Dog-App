Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class survey
    Inherits System.Web.UI.Page
    Dim strMasterID = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        'hide adoptee info button to prevent multiple submissions
        btnSubmit.Visible = False

        'add info to database
        'replace dbcon with your connection string in the Web.Config file
        Dim conString As String = WebConfigurationManager.ConnectionStrings("dbcon").ConnectionString
        checkUser(tbLastName.Text, tbFirstName.Text, tbAddress.Text)
        Dim con As New SqlConnection(conString)
        'set ansi_warnings off
        'create insert statement here

        'see if user exists

        Dim sql As String
        If strMasterID = "" Then
            sql = "INSERT INTO dbo.LIST1 (LASTNAME, FIRSTNAME, FIRSTENTERED, ADD1, CITY, STATE, ZIP, PHONENUMB, BPHONE, Email )"
            sql &= "VALUES"
            sql &= "(@last, @first, @date, @address, @city, @state, @zip, @home, @work, @email )"
        Else
            sql = "UPDATE dbo.LIST1 SET "
            sql &= "LASTNAME = @last, FIRSTNAME = @first, FIRSTENTERED = @date, ADD1 = @address, CITY = @city, STATE = @state, ZIP = @zip, PHONENUMB = @home, BPHONE = @work, Email = @email "
            sql &= "WHERE MASTERID = '" & strMasterID & "'"

        End If

        Dim cmd As New SqlCommand(sql.ToString, con)

        cmd.Parameters.AddWithValue("@last", tbLastName.Text)
        cmd.Parameters.AddWithValue("@first", tbFirstName.Text)
        cmd.Parameters.AddWithValue("@date", tbDate.Text)
        cmd.Parameters.AddWithValue("@address", tbAddress.Text)
        cmd.Parameters.AddWithValue("@city", tbCity.Text)
        cmd.Parameters.AddWithValue("@state", tbState.Text)
        cmd.Parameters.AddWithValue("@zip", tbZip.Text)
        cmd.Parameters.AddWithValue("@home", tbHomePhone.Text)
        cmd.Parameters.AddWithValue("@work", tbWorkPhone.Text)
        cmd.Parameters.AddWithValue("@email", tbEmail.Text)

        Dim int As Integer = 0
        Try
            con.Open()
            int = cmd.ExecuteNonQuery()
            '   lblResults.Text = "Records added"
        Catch ex As Exception
            lblResults.Text = ex.Message
        Finally
            con.Close()
        End Try

        'get masterid for cat or dog table
        getMasterID()
      
        'show cat panel if radio button is for cat
        If rbCat.Checked Then
            pnlCat.Visible = True
        ElseIf rbDog.Checked Then
            pnlDog.Visible = True
        End If
        'show dog panel if radio button is for dog
        lockFields()

    End Sub

    Protected Sub btnCat_Click(sender As Object, e As EventArgs) Handles btnCat.Click
        'add info to database
        'replace dbcon with your connection string in the Web.Config file
        Dim conString As String = WebConfigurationManager.ConnectionStrings("dbcon").ConnectionString

        Dim con As New SqlConnection(conString)
        'set ansi_warnings off
        'create insert statement here
        Dim sql As String
        sql = "INSERT INTO dbo.MYMCATAPPS (MASTERID, q1a, Q1b, q1c, Q2A, q2b, q2C, q3A, q3B, Q3C, q4A, q4b, q4c, q5a, q5b, q5c, q6a, q6b, q6c, q6d, q7a, q7b, q7c, q8a, q8b, q8c, q9a, q9b, q9c, q10a, q10b,"
        sql &= " q10c, q10d, q11a, q11b, q11c, q12a, q12b, q12c, q13a, q13b, q13c, q14a, q14b, q14c, q15a, q15b, q15c, q12d, q16)"
        sql &= "VALUES"
        sql &= "('" & hfMasterID.Value.ToString & "','" & cbQ1A.Checked & "','" & cbq1b.Checked & "','" & q1c.Checked & "','" & cbq2a.Checked & "','" & cbq2b.Checked & "','" & cbq2c.Checked & "','" & cbq3a.Checked & "','" & cbq3a.Checked & "','" & cbq3c.Checked & "','" & cbq4a.Checked & "',"
        sql &= "'" & cbq4b.Checked & "','" & cbq4c.Checked & "','" & cbq5a.Checked & "','" & cbq5b.Checked & "','" & cbq5c.Checked & "','" & cbq6a.Checked & "','" & cbq6b.Checked & "','" & cbq6c.Checked & "','" & cbq6d.Checked & "',"
        sql &= "'" & cbq7a.Checked & "','" & cbq7b.Checked & "','" & cbq7c.Checked & "','" & cbq8a.Checked & "','" & cbq8b.Checked & "','" & cbq8c.Checked & "','" & cbq9a.Checked & "','" & cbq9b.Checked & "','" & cbq9c.Checked & "','" & cbq11a.Checked & "',"
        sql &= "'" & cbq11b.Checked & "','" & cbq11c.Checked & "','" & cbq10a.Checked & "','" & cbq10b.Checked & "','" & cbq10c.Checked & "','" & cbq10d.Checked & "','" & cbq12a.Checked & "','" & cbq12b.Checked & "','" & cbq12c.Checked & "',"
        sql &= "'" & cbq13a.Checked & "','" & cbq13b.Checked & "','" & cbq13c.Checked & "','" & cbq14a.Checked & "','" & cbq14b.Checked & "','" & cbq14c.Checked & "','" & cbq15a.Checked & "','" & cbq15b.Checked & "','" & cbq15c.Checked & "','" & tbDateCats.Text & "','" & tbQuestion.Text & "')"
        Dim cmd As New SqlCommand(sql.ToString, con)

        Dim int As Integer = 0
        Try
            con.Open()
            int = cmd.ExecuteNonQuery()
            lblResults.Text = "Records added"
        Catch ex As Exception
            lblResults.Text = ex.Message
        Finally
            con.Close()
        End Try
    End Sub

    'lock top fields to prevent mistypes
    Public Sub lockFields()
        Me.tbFirstName.Enabled = False
        Me.tbLastName.Enabled = False
        Me.tbDate.Enabled = False
        Me.tbAddress.Enabled = False
        Me.tbCity.Enabled = False
        Me.tbZip.Enabled = False
        Me.tbHomePhone.Enabled = False
        Me.tbWorkPhone.Enabled = False
        Me.tbEmail.Enabled = False
    End Sub
    'get masterid for insert in cat or dog app
    Public Sub getMasterID()
        If strMasterID <> "" Then
            hfMasterID.Value = strMasterID.ToString
        Else

            Dim sqlMasterID As String
            sqlMasterID = "SELECT MAX(MASTERID) as max FROM dbo.LIST1"

            Dim conString As String = WebConfigurationManager.ConnectionStrings("dbcon").ConnectionString

            Dim con As New SqlConnection(conString)
            Dim cmd As New SqlCommand(sqlMasterID, con)

            Dim rdr As SqlDataReader

            Try
                con.Open()
                rdr = cmd.ExecuteReader()
                rdr.Read()
                hfMasterID.Value = rdr("max").ToString
                lblResults.Text = rdr("max").ToString
                rdr.Close()
            Catch ex As Exception
                lblResults.Text = ex.Message

            Finally
                con.Close()

            End Try
        End If
    End Sub

    Public Sub checkUser(ByVal strLast, ByVal strFirst, ByVal strAdd)
        Dim sqlMasterID As String
        sqlMasterID = "SELECT MASTERID FROM dbo.LIST1 WHERE LASTNAME = '" & strLast & "' AND FIRSTNAME = '" & strFirst & "' AND ADD1 LIKE '" & strAdd & "' "

        Dim conString As String = WebConfigurationManager.ConnectionStrings("dbcon").ConnectionString

        Dim con As New SqlConnection(conString)
        Dim cmd As New SqlCommand(sqlMasterID, con)

        Dim rdr As SqlDataReader

        Try
            con.Open()
            rdr = cmd.ExecuteReader()
            rdr.Read()
            strMasterID = rdr("MASTERID").ToString
            lblResults.Text = rdr("MASTERID").ToString
            rdr.Close()
        Catch ex As Exception
            lblResults.Text = ex.Message

        Finally
            con.Close()

        End Try
    End Sub
    
    Protected Sub btnDog_Click(sender As Object, e As EventArgs) Handles btnDog.Click
        'add info to database
        'replace dbcon with your connection string in the Web.Config file
        Dim conString As String = WebConfigurationManager.ConnectionStrings("dbcon").ConnectionString

        Dim con As New SqlConnection(conString)
        'set ansi_warnings off
        'create insert statement here
        Dim sql As String
        sql = "INSERT INTO dbo.MYMDOGAPPS (MASTERID, q1a, Q1b, q1c, Q2A, q2b, q2C, q3A, q3B, Q3C, q4A, q4b, q4c, q4d, q4e, q5a, q5b, Q6, q7a, q7b, q7c, q7d, q7e, q8a, q8b, q8c, q9a, q9b, q9c, q9d, q10a, q10b,"
        sql &= " q11a, q11b, q12a, q12b, q12c, q13a, q13b, q13c, q14a, q14b, q14c, q15a, q15b, q15c, q16a, q16b, q17a, q17b, q18)"
        sql &= "VALUES"
        sql &= "('" & hfMasterID.Value.ToString & "','" & q1a.Checked & "','" & q2a.Checked & "','" & q2b.Checked & "','" & cbq2c.Checked & "','" & cb5.Checked & "','" & cb6.Checked & "','" & q3a.Checked & "','" & tbbreeds.Text & "','" & q3b.Checked & "','" & cb10.Checked & "','" & cb11.Checked & "',"
        sql &= "'" & cb12.Checked & "','" & cb13.Checked & "','" & cb14.Checked & "','" & cb15.Checked & "','" & cb16.Checked & "','" & tbHourDay.Text & "','" & cb17.Checked & "','" & cb18.Checked & "','" & cb19.Checked & "','" & cb20.Checked & "',"
        sql &= "'" & cb21.Checked & "','" & cb22.Checked & "','" & cb23.Checked & "','" & cb24.Checked & "','" & cb25.Checked & "','" & cb26.Checked & "','" & cb27.Checked & "','" & cb28.Checked & "','" & cb29.Checked & "','" & cb30.Checked & "',"
        sql &= "'" & cb31.Checked & "','" & cb32.Checked & "','" & cb33.Checked & "','" & cb34.Checked & "','" & cb35.Checked & "','" & cb36.Checked & "','" & cb37.Checked & "','" & cb38.Checked & "','" & cb39.Checked & "',"
        sql &= "'" & cb40.Checked & "','" & cb41.Checked & "','" & cb42.Checked & "','" & cb43.Checked & "','" & cb44.Checked & "','" & cb45.Checked & "','" & cb46.Checked & "','" & cb47.Checked & "','" & cb48.Checked & "','" & tbQuestionDog.Text & "')"

        Dim cmd As New SqlCommand(sql.ToString, con)

        Dim int As Integer = 0
        Try
            con.Open()
            int = cmd.ExecuteNonQuery()
            lblResults.Text = "Records added"
        Catch ex As Exception
            lblResults.Text = ex.Message
        Finally
            con.Close()
        End Try
        'prevent mulitple submissions
        btnDog.Visible = False

    End Sub

End Class