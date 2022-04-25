#include <iostream>

using namespace std;

	/*!
	  \brief �������� �����
	 
	  �������� �����, ����������� ���������� ����� ������
	 */

class Tour {
public:
	void Init(double price, int sale);
	void Display();
	int GetPlan();
	double GetPrice();

	double Exp_amount();
protected:
	double price;
	int plan_sale;
};

	/*!
	 
	   \brief ����� ������������� ����������
	 
	   \param [in] pr ���� ����
	   \param [in] sale ����������� ���-�� �������
	 
	 */

void Tour::Init(double pr, int sale) {
	price = pr;
	plan_sale = sale;
}

	/*!
	 
	  \brief �����, ������� ������� � ������� ������ �� ������
	 
	 */

void Tour::Display() {
	cout << "��������� ������ - " << price << "\n����������� ���-�� ������� - " << plan_sale << endl;
}

	/*!
	 
	  \brief ����� ���������� ���������� ����� �� ������ �������
	 
	   \param [out] Suma ���������� ����� �� ������ �������
	 
	 */

double Tour::Exp_amount() {
	double summ = price * plan_sale;

	return floor(summ * 100) / 100;
}

	/*!
	 
	  \brief �����, ������������ ����������� ���-�� �������
	 
	 */

int Tour::GetPlan() {
	return plan_sale;
}

	/*!
	 
	  \brief �����, ������������ ���� ����
	 
	 */

double Tour::GetPrice() {
	return price;
}

	/*!
	  \brief �������� ����� �� Tour
	 
	  �������� �������������� ����, ������������ � "�������" �� �������� ���
	 
      @image{inline} html hotTours.jpg "������� �������"
	 
	 */

class Permit : public Tour {
private:
	int hot_per;
public:
	void Init(double price, int sale, int hotPer);
	void Display();
	int Get_hot_per();
	double Exp_amount();

};

	/*!
	 
	  \brief �����, ������������ 1 ��� 0, ��� ������� ������� �� �������
	 
	 */

int Permit::Get_hot_per() {
	return hot_per;
}

	/*!
	
	  \brief ����� ������������� ����������
	
	  \param [in] pr ���� ����
	  \param [in] sale ����������� ���-�� �������
	  \param [in] hotper � "�������" �� �������� ��� 1 ��� 0
	 
	*/

void Permit::Init(double price, int sale, int hotPer) {
	Tour::Init(price, sale);

	hot_per = hotPer;
}

	/*!
	 
	  \brief �����, ������� ������� � ������� ������ �� ������
	 
	 */

void Permit::Display() {
	Tour::Display();

	if (hot_per == 1) {
		cout << "��� � ������� ��������" << endl;
	}
	else {
		cout << "��� � ������� ��������" << endl;
	}
}

	/*!
	 
	   \brief ����� ���������� ���������� ����� �� ������ �������
	 
	   \param [out] summ ���������� ����� �� ������ �������
	 
	   ���� ��� �������, �� ����� ������ 30% � ����������� �� ����. �������
	 
	   \f$Summ = (Price - Price * 0.3) * PlanSale\f$
	 
	   �.�. �� ��������� ��������� �� 30 %
	 
	 */


double Permit::Exp_amount() {
	double summ = price * plan_sale;

	if (hot_per == 1) {
		summ -= summ * 0.3;
	}


	return floor(summ * 100) / 100;
}

	/*!
	  \brief ��������������� �����
	 
	  �������� �����, ����������� ����� ����� �� ������ ���� �����
	 
	 */

class Travel_agency {
	
public:
	void Init(char* n, double pr1, int sale1, double pr2, int sale2, int hotPer, int RealProcFirst1, int RealProcSecond2);
	void Display();

	double Summ_mn();
private:
	char Name[30];
	Tour Tour;
	Permit FtPermit;

	int RealProcFirst, RealProcSecond;
};

	/*!
	 
	   \brief ����� ������������� ����������
	 
	   \param [in] n �������� ���. ��������
	   \param [in] pr1 ���� ������� ����
	   \param [in] sale1 ����������� ���-�� ������� ������� ����
	   \param [in] pr2 ���� ������� ����
	   \param [in] sale2 ����������� ���-�� ������� ������� ����
	   \param [in] hotPer � "�������" �� �������� ���
	   \param [in] RealProcFirst1 �������� ������� ������ ������� ����
	   \param [in] RealProcSecond2 �������� ������� ������ ������� ����
	 
	 */

void Travel_agency::Init(char* n, double pr1, int sale1, double pr2, int sale2,int hotPer, int RealProcFirst1, int RealProcSecond2) {
	strcpy_s(Name, n);

	Tour.Init(pr1, sale1);
	FtPermit.Init(pr2, sale2, hotPer);

	RealProcFirst = RealProcFirst1;
	RealProcSecond = RealProcSecond2;

}

	/*!
	 
	  \brief �����, ������� ������� � ������� ������ �� ������
	 
	 */

void Travel_agency::Display() {
	cout << "�������� �����������: " << Name << "\n������ ���:\n";
	Tour.Display();

	cout << "�������� ������� ������ ������� ����: " << RealProcFirst << "\n������ ��� : \n";
	FtPermit.Display();

	cout << "�������� ������� ������ ������� ����: " << RealProcSecond << endl;

}

	/*!
	 
	  \brief �����, ����������� ����� ����� �� ������ ���� �����
	 
	   \param [out] summ ����� ����� �� ������ ���� �����
	 
	 */

double Travel_agency::Summ_mn() {
	double summ = 0;
	double k;

	k = (RealProcFirst * Tour.GetPlan()) / 100;
	summ += k * Tour.GetPrice();

	k = (RealProcSecond * FtPermit.GetPlan()) / 100;

	if (FtPermit.Get_hot_per() == 1) {
		summ += k * (FtPermit.GetPrice() - (FtPermit.GetPrice() * 0.3));
	}
	else {
		summ += k * FtPermit.GetPrice();
	}

	return floor(summ * 100) / 100;
}

int main() {
	setlocale(LC_ALL, "Russian");

	Tour a;
	a.Init(120, 20);
	a.Display();
	
	cout << endl;


	Permit pr;
	pr.Init(250, 18, 1);
	pr.Display();
	double exp = pr.Exp_amount();
	cout << "��������� ����� �� ������� ������� - " << exp << endl;

	cout << endl;

	Travel_agency Tr1;
	Tr1.Init((char*)"����������� �����", 520, 120, 410, 70, 1, 60, 20);
	Tr1.Display();

	double SummAll = Tr1.Summ_mn();
	cout << "����� ����� �� ������ ���� �����: " << SummAll << " ������\n" << endl;


	Travel_agency Tr2;
	Tr2.Init((char*)"����������� ������", 120, 29, 270, 30, 0, 40, 50);
	Tr2.Display();

	SummAll = Tr2.Summ_mn();
	cout << "����� ����� �� ������ ���� �����: " << SummAll << " ������\n" << endl;
}