class Installment {
  int month;
  double payment;
  double principal;
  double interest;
  double totalrate;
  double balance;

  Installment(
      {this.month,
      this.payment,
      this.principal,
      this.interest,
      this.totalrate,
      this.balance}
      );
}

/*month: i + 1,
                          payment: (amt *
                              (rate / 1200) /
                              (1 - pow(1 + rate / 1200, -term)))
                              .roundToDouble(),
                          balance: balance,
                          principal:
                          (pay - balance * rate / 1200).roundToDouble(),
                          interest: (balance * rate / 1200).roundToDouble(),
                          totalrate: totalrate,*/

/*print("pay=" +
                            pay.toString() +
                            " balance=" +
                            balance.toString() +
                            " totalrate=" +
                            totalrate.toString() +
                            " term=" +
                            term.toString() +
                            " i=" +
                            i.toString());*/
/*var temp = new Installment(
                          month: i + 1,
                          payment: (amt *
                                  (rate / 1200) /
                                  (1 - pow(1 + rate / 1200, -term)))
                              .roundToDouble(),
                          balance: balance,
                          principal:
                              (pay - balance * rate / 1200).roundToDouble(),
                          interest: (balance * rate / 1200).roundToDouble(),
                          totalrate: totalrate,
                        );*/

/*print("before pay=" +
                          pay.toString() +
                          "balance" +
                          balance.toString() +
                          "totalrate" +
                          totalrate.toString() +
                          " term=" +
                          term.toString() +
                          " i=" +
                          i.toString());*/
