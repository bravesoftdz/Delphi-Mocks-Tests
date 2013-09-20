unit Test.Delphi.Mocks;
{

 Delphi DUnit Test Case
 ----------------------
 This unit contains a skeleton test case class generated by the Test Case Wizard.
 Modify the generated code to correctly setup and call the methods from the unit
 being tested.

}

interface

uses
  TestFramework,
  System.SysUtils,
  Delphi.Mocks,
  System.Rtti,
  Test.ITested;

type
  TTestTidyCase = class(TTestCase)
  protected
      fMock : TMock<ITested>;

      procedure CheckTidy(pExp, pRes: string);

  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

  TestIExpect = class(TTestTidyCase)
  strict private
    fIExpect: IExpect<ITested>;

    procedure CheckExpectation(pMethod: string = ''; pExpectation: string = '');

  public
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestOnce_When_NotCalled;
    procedure TestOnce_When_CalledOnce;
    procedure TestOnce_When_CalledWrong;
    procedure TestOnce_When_CalledTwice;
    procedure TestOnce_When_CalledTwiceWrong;
    procedure TestOnce_All_NotCalled;
    procedure TestOnce_All_CalledOnce;
    procedure TestOnce_All_CalledTwice;
    procedure TestOnce_Method_NotCalled;
    procedure TestOnce_Method_CalledOnce;
    procedure TestOnce_Method_CalledTwice;

    procedure TestNever_When_NotCalled;
    procedure TestNever_When_Called;
    procedure TestNever_All_NotCalled;
    procedure TestNever_All_Called;
    procedure TestNever_Method_NotCalled;
    procedure TestNever_Method_Called;

    procedure TestAtLeastOnce_When_NotCalled;
    procedure TestAtLeastOnce_When_CalledOnce;
    procedure TestAtLeastOnce_When_CalledWrong;
    procedure TestAtLeastOnce_When_CalledTwice;
    procedure TestAtLeastOnce_All_NotCalled;
    procedure TestAtLeastOnce_All_CalledOnce;
    procedure TestAtLeastOnce_All_CalledTwice;
    procedure TestAtLeastOnce_Method_NotCalled;
    procedure TestAtLeastOnce_Method_CalledOnce;
    procedure TestAtLeastOnce_Method_CalledTwice;

    procedure TestAtLeast_When_NotCalled;
    procedure TestAtLeast_When_CalledOnce;
    procedure TestAtLeast_When_CalledWrong;
    procedure TestAtLeast_When_CalledTwice;
    procedure TestAtLeast_All_NotCalled;
    procedure TestAtLeast_All_CalledOnce;
    procedure TestAtLeast_All_CalledTwice;
    procedure TestAtLeast_Method_NotCalled;
    procedure TestAtLeast_Method_CalledOnce;
    procedure TestAtLeast_Method_CalledTwice;

    procedure TestAtMost_When_NotCalled;
    procedure TestAtMost_When_CalledOnce;
    procedure TestAtMost_When_CalledWrong;
    procedure TestAtMost_When_CalledTwice;
    procedure TestAtMost_All_NotCalled;
    procedure TestAtMost_All_CalledOnce;
    procedure TestAtMost_All_CalledTwice;
    procedure TestAtMost_Method_NotCalled;
    procedure TestAtMost_Method_CalledOnce;
    procedure TestAtMost_Method_CalledTwice;

    procedure TestBetween_When_NotCalled;
    procedure TestBetween_When_CalledOnce;
    procedure TestBetween_When_CalledWrong;
    procedure TestBetween_When_CalledTwice;
    procedure TestBetween_When_CalledTwiceWrong;
    procedure TestBetween_When_CalledThrice;
    procedure TestBetween_All_NotCalled;
    procedure TestBetween_All_CalledOnce;
    procedure TestBetween_All_CalledTwice;
    procedure TestBetween_All_CalledThrice;
    procedure TestBetween_Method_NotCalled;
    procedure TestBetween_Method_CalledOnce;
    procedure TestBetween_Method_CalledTwice;
    procedure TestBetween_Method_CalledThrice;

    procedure TestExactly_When_NotCalled;
    procedure TestExactly_When_CalledOnce;
    procedure TestExactly_When_CalledWrong;
    procedure TestExactly_When_CalledTwice;
    procedure TestExactly_All_NotCalled;
    procedure TestExactly_All_CalledOnce;
    procedure TestExactly_All_CalledTwice;
    procedure TestExactly_Method_NotCalled;
    procedure TestExactly_Method_CalledOnce;
    procedure TestExactly_Method_CalledTwice;

    procedure TestBefore_When_NotCalled;
    procedure TestBefore_All_NotCalled;
    procedure TestBefore_Method_NotCalled;

    procedure TestAfter_When_NotCalled;
    procedure TestAfter_All_NotCalled;
    procedure TestAfter_Method_NotCalled;
  end;

  TestISetup = class(TTestTidyCase)
  strict private
    FISetup: ISetup<ITested>;

  public
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TestBehaviorMustBeDefined_False_False;
    procedure TestBehaviorMustBeDefined_True_True;

    procedure TestCapture_OneValue_CalledA;
    procedure TestCapture_OneString_CalledA;
    procedure TestCapture_OneObject_Callednil;
    procedure TestCapture_OneObject_CalledSame;
    procedure TestCapture_OneObject_CalledWrong;
    procedure TestCapture_OneInterface_Callednil;
    procedure TestCapture_OneInterface_CalledSame;
    procedure TestCapture_OneInterface_CalledDiff;
    procedure TestCapture_OneInterface_CalledWrong;

    procedure TestWillReturn_NoParamsNilWhen_Called;
    procedure TestWillReturn_NoParams0When_Called;
    procedure TestWillReturn_OneStringNilWhenA_CalledA;
    procedure TestWillReturn_OneStringNilWhenA_CalledB;
    procedure TestWillReturn_OneString0WhenA_CalledA;
    procedure TestWillReturn_OneString0WhenA_CalledB;

    procedure TestWillReturnDefault_NoParamsObjectNil_Called;
    procedure TestWillReturnDefault_NoParamsInteger0_Called;
    procedure TestWillReturnDefault_OneStringObjectNil_CalledA;
    procedure TestWillReturnDefault_OneStringObjectNil_CalledB;
    procedure TestWillReturnDefault_OneStringInteger0_CalledA;
    procedure TestWillReturnDefault_OneStringInteger0_CalledB;

    procedure TestWillReturnAndDefault_OneStringObjectOther_CalledA;
    procedure TestWillReturnAndDefault_OneStringObjectNil_CalledB;
    procedure TestWillReturnAndDefault_OneStringInteger1_CalledA;
    procedure TestWillReturnAndDefault_OneStringInteger0_CalledB;

    procedure TestWillExecute_OneStringIntegerWhen_CalledOnce;
    procedure TestWillExecute_OneStringIntegerWhen_CalledWrong;
    procedure TestWillExecute_OneStringIntegerAll_Called;
    procedure TestWillExecute_OneStringIntegerMethod_Called;

    procedure TestWillRaise_OneStringWhen_CalledOnce;
    procedure TestWillRaise_OneStringWhen_CalledWrong;
    procedure TestWillRaise_OneStringAll_Called;
    procedure TestWillRaise_OneStringMethod_Called;
  end;

implementation

uses
  System.RegularExpressions,
  System.StrUtils;


function TidyString(pMsg: string): string;
begin
  pMsg := TRegEx.Replace(pMsg, '\s+', ' ');
  Result := Trim(pMsg);
end;

{ TestIExpect }

procedure TestIExpect.CheckExpectation(pMethod, pExpectation: string);
var
  sExpected: string;
begin
  if (pMethod > '') and (pExpectation > '') then
    sExpected := 'Method : '+ pMethod + ' Expectation [ ' + pExpectation + ' ] was not met.'
  else
    sExpected := '';

  CheckTidy(sExpected, fMock.CheckExpectations);
end;

procedure TestIExpect.SetUp;
begin
  inherited;

  fIExpect := fMock.Setup.Expect;
end;

procedure TestIExpect.TearDown;
begin
  fIExpect := nil;

  inherited;
end;

procedure TestIExpect.TestOnce_When_CalledOnce;
begin
  fIExpect.Once.When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation;
end;

procedure TestIExpect.TestOnce_When_CalledTwice;
begin
  fIExpect.Once.When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestOnce_When_CalledTwiceWrong;
begin
  fIExpect.Once.When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', 'Once When( )');
end;

procedure TestIExpect.TestOnce_When_CalledWrong;
begin
  fIExpect.Once.When.ProcOneString('a');

  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', 'Once When( a )');
end;

procedure TestIExpect.TestOnce_When_NotCalled;
begin
  fIExpect.Once.When.ProcOneString('');

  CheckExpectation('ProcOneString', 'Once When( )');
end;

procedure TestIExpect.TestOnce_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once.All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName);
end;

procedure TestIExpect.TestOnce_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once.All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'Once');
end;

procedure TestIExpect.TestOnce_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once.All(lMethodName);

  CheckExpectation(lMethodName, 'Once');
end;

procedure TestIExpect.TestOnce_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName);
end;

procedure TestIExpect.TestNever_When_Called;
begin
  fIExpect.Never.When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', 'Never When( )');
end;

procedure TestIExpect.TestOnce_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'Once');
end;

procedure TestIExpect.TestOnce_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Once(lMethodName);

  CheckExpectation(lMethodName, 'Once');
end;

procedure TestIExpect.TestNever_When_NotCalled;
begin
  fIExpect.Never.When.ProcOneString('');

  CheckExpectation('ProcOneString');
end;

procedure TestIExpect.TestNever_All_Called;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Never.All(lMethodName);

  fMock.Instance.ProcOneString('');

  CheckExpectation(lMethodName, 'Never');
end;

procedure TestIExpect.TestNever_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Never.All(lMethodName);

  CheckExpectation(lMethodName);
end;

procedure TestIExpect.TestNever_Method_Called;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Never(lMethodName);

  fMock.Instance.ProcOneString('');

  CheckExpectation(lMethodName, 'Never');
end;

procedure TestIExpect.TestNever_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Never(lMethodName);

  CheckExpectation(lMethodName);
end;

procedure TestIExpect.TestAtLeastOnce_When_CalledOnce;
begin
  fIExpect.AtLeastOnce.When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation;
end;

procedure TestIExpect.TestAtLeastOnce_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce.All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeastOnce_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce.All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeastOnce_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce.All(lMethodName);

  CheckExpectation(lMethodName, 'At Least Once');
end;

procedure TestIExpect.TestAtLeastOnce_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeastOnce_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeastOnce_When_CalledTwice;
begin
  fIExpect.AtLeastOnce.When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation;
end;

procedure TestIExpect.TestAtLeastOnce_When_CalledWrong;
begin
  fIExpect.AtLeastOnce.When.ProcOneString('a');

  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', 'At Least Once When( a )');
end;

procedure TestIExpect.TestAtLeastOnce_When_NotCalled;
begin
  fIExpect.AtLeastOnce.When.ProcOneString('');

  CheckExpectation('ProcOneString', 'At Least Once When( )');
end;

procedure TestIExpect.TestAtLeastOnce_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeastOnce(lMethodName);

  CheckExpectation(lMethodName, 'At Least Once');
end;

procedure TestIExpect.TestAtLeast_When_CalledOnce;
begin
  fIExpect.AtLeast(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestAtLeast_When_CalledTwice;
begin
  fIExpect.AtLeast(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestAtLeast_When_CalledWrong;
begin
  fIExpect.AtLeast(1).When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestAtLeast_When_NotCalled;
begin
  fIExpect.AtLeast(1).When.ProcOneString('');

  CheckExpectation('ProcOneString', 'At Least 1 Times When ( )');
end;

procedure TestIExpect.TestAtLeast_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeast_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeast_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(1).All(lMethodName);

  CheckExpectation(lMethodName, 'At Least 1 Times');
end;

procedure TestIExpect.TestAtLeast_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(lMethodName, 1);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeast_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(lMethodName, 1);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtLeast_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtLeast(lMethodName, 1);

  CheckExpectation(lMethodName, 'At Least 1 Times');
end;

procedure TestIExpect.TestAtMost_When_CalledOnce;
begin
  fIExpect.AtMost(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestAtMost_When_CalledTwice;
begin
  fIExpect.AtMost(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', 'At Most 1 Times When ( )');
end;

procedure TestIExpect.TestAtMost_When_CalledWrong;
begin
  fIExpect.AtMost(1).When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestAtMost_When_NotCalled;
begin
  fIExpect.AtMost(1).When.ProcOneString('');

  CheckExpectation('ProcOneString', 'At Most 1 Times When ( )');
end;

procedure TestIExpect.TestAtMost_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtMost_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'At Most 1 Times');
end;

procedure TestIExpect.TestAtMost_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(1).All(lMethodName);

  CheckExpectation(lMethodName, 'At Most 1 Times');
end;

procedure TestIExpect.TestAtMost_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(lMethodName, 1);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestAtMost_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(lMethodName, 1);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'At Most 1 Times');
end;

procedure TestIExpect.TestAtMost_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.AtMost(lMethodName, 1);

  CheckExpectation(lMethodName, 'At Most 1 Times');
end;

procedure TestIExpect.TestBetween_When_CalledOnce;
begin
  fIExpect.Between(1,2).When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestBetween_When_CalledThrice;
begin
  fIExpect.Between(1,2).When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', 'Between 1 and 2 Times When( )');
end;

procedure TestIExpect.TestBetween_When_CalledTwice;
begin
  fIExpect.Between(1,2).When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestBetween_When_CalledTwiceWrong;
begin
  fIExpect.Between(1,2).When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');
  fMock.Instance.ProcOneString('a');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestBetween_When_CalledWrong;
begin
  fIExpect.Between(1,2).When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestBetween_When_NotCalled;
begin
  fIExpect.Between(1,2).When.ProcOneString('');

  CheckExpectation('ProcOneString', 'Between 1 and 2 Times When( )');
end;

procedure TestIExpect.TestBetween_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(1, 2).All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestBetween_All_CalledThrice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(1, 2).All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');
  fMock.Instance.ProcOneString('c');

  CheckExpectation(lMethodName, 'Between 1 and 2 Times');
end;

procedure TestIExpect.TestBetween_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(1, 2).All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestBetween_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(1, 2).All(lMethodName);

  CheckExpectation(lMethodName, 'Between 1 and 2 Times');
end;

procedure TestIExpect.TestBetween_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(lMethodName, 1, 2);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestBetween_Method_CalledThrice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(lMethodName, 1, 2);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');
  fMock.Instance.ProcOneString('c');

  CheckExpectation(lMethodName, 'Between 1 and 2 Times');
end;

procedure TestIExpect.TestBetween_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(lMethodName, 1, 2);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestBetween_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Between(lMethodName, 1, 2);

  CheckExpectation(lMethodName, 'Between 1 and 2 Times');
end;

procedure TestIExpect.TestExactly_When_CalledOnce;
begin
  fIExpect.Exactly(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestExactly_When_CalledTwice;
begin
  fIExpect.Exactly(1).When.ProcOneString('');

  fMock.Instance.ProcOneString('');
  fMock.Instance.ProcOneString('');

  CheckExpectation('ProcOneString', 'Exactly 1 Times When( )');
end;

procedure TestIExpect.TestExactly_When_CalledWrong;
begin
  fIExpect.Exactly(1).When.ProcOneString('a');

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation('ProcOneString', '');
end;

procedure TestIExpect.TestExactly_When_NotCalled;
begin
  fIExpect.Exactly(1).When.ProcOneString('');

  CheckExpectation('ProcOneString', 'Exactly 1 Times When( )');
end;

procedure TestIExpect.TestExactly_All_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestExactly_All_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(1).All(lMethodName);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'Exactly 1 Times');
end;

procedure TestIExpect.TestExactly_All_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(1).All(lMethodName);

  CheckExpectation(lMethodName, 'Exactly 1 Times');
end;

procedure TestIExpect.TestExactly_Method_CalledOnce;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(lMethodName, 1);

  fMock.Instance.ProcOneString('a');

  CheckExpectation(lMethodName, '');
end;

procedure TestIExpect.TestExactly_Method_CalledTwice;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(lMethodName, 1);

  fMock.Instance.ProcOneString('a');
  fMock.Instance.ProcOneString('b');

  CheckExpectation(lMethodName, 'Exactly 1 Times');
end;

procedure TestIExpect.TestExactly_Method_NotCalled;
var
  lMethodName: string;
begin
  lMethodName := 'ProcOneString';

  fIExpect.Exactly(lMethodName, 1);

  CheckExpectation(lMethodName, 'Exactly 1 Times');
end;

procedure TestIExpect.TestBefore_When_NotCalled;
var
  ReturnValue: IWhen<ITested>;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  ReturnValue := FIExpect.Before(AMethodName);
  // TODO: Validate method results
end;

procedure TestIExpect.TestBefore_All_NotCalled;
var
  ABeforeMethodName: string;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  FIExpect.Before(ABeforeMethodName).All(AMethodName);
  // TODO: Validate method results
end;

procedure TestIExpect.TestBefore_Method_NotCalled;
var
  ABeforeMethodName: string;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  FIExpect.Before(AMethodName, ABeforeMethodName);
  // TODO: Validate method results
end;

procedure TestIExpect.TestAfter_When_NotCalled;
var
  ReturnValue: IWhen<ITested>;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  ReturnValue := FIExpect.After(AMethodName);
  // TODO: Validate method results
end;

procedure TestIExpect.TestAfter_All_NotCalled;
var
  AAfterMethodName: string;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  FIExpect.After(AAfterMethodName).All(AMethodName);
  // TODO: Validate method results
end;

procedure TestIExpect.TestAfter_Method_NotCalled;
var
  AAfterMethodName: string;
  AMethodName: string;
begin
  StartExpectingException(Exception);
  // TODO: Setup method call parameters
  FIExpect.After(AMethodName, AAfterMethodName);
  // TODO: Validate method results
end;

{ TestISetup }

procedure TestISetup.SetUp;
begin
  inherited;

  FISetup := fMock.Setup;
end;

procedure TestISetup.TearDown;
begin
  FISetup := nil;

  inherited;
end;

procedure TestISetup.TestBehaviorMustBeDefined_False_False;
var
  bExpected, bResult: Boolean;
begin
  bExpected := False;

  FISetup.BehaviorMustBeDefined := bExpected;

  bResult := FISetup.GetBehaviorMustBeDefined;

  CheckEquals(bExpected, bResult);
end;

procedure TestISetup.TestBehaviorMustBeDefined_True_True;
var
  bExpected, bResult: Boolean;
begin
  bExpected := True;

  FISetup.SetBehaviorMustBeDefined(bExpected);

  bResult := FISetup.BehaviorMustBeDefined;

  CheckEquals(bExpected, bResult);
end;

procedure TestISetup.TestCapture_OneInterface_CalledDiff;
var
  vExpected1, vResult1: ITest1;
  vExpected2, vResult2: ITest2;
begin
  vExpected1 := TTest12.Create;
  if not Supports(vExpected1, ITest2, vExpected2) then
    vExpected2 := nil;

  FISetup.Capture(1).WillExecute<ITest2>(procedure(const AVal: ITest2)
    begin
      vResult2 := aVal;
    end).All('ProcOneInterface');

  fMock.Instance.ProcOneInterface(vExpected1);

  CheckEqualsHex(Cardinal(vExpected2), Cardinal(vResult2));
end;

procedure TestISetup.TestCapture_OneInterface_Callednil;
var
  vExpected, vResult: ITest1;
begin
  vExpected := nil;

  FISetup.Capture(1).WillExecute<ITest1>(procedure(const AVal: ITest1)
    begin
      vResult := aVal;
    end).All('ProcOneInterface');

  fMock.Instance.ProcOneInterface(vExpected);

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestCapture_OneInterface_CalledSame;
var
  vExpected, vResult: ITest1;
begin
  vExpected := TTest12.Create;

  FISetup.Capture(1).WillExecute<ITest1>(procedure(const AVal: ITest1)
    begin
      vResult := aVal;
    end).All('ProcOneInterface');

  fMock.Instance.ProcOneInterface(vExpected);

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestCapture_OneInterface_CalledWrong;
var
  vExpected1, vResult1: ITest1;
  vExpected3, vResult3: ITest3;
begin
  vExpected1 := TTest12.Create;
  if not Supports(vExpected1, ITest3, vExpected3) then
    vExpected3 := nil;

  FISetup.Capture(1).WillExecute<ITest3>(procedure(const AVal: ITest3)
    begin
      vResult3 := aVal;
    end).All('ProcOneInterface');

  fMock.Instance.ProcOneInterface(vExpected1);

  CheckEqualsHex(Cardinal(vExpected3), Cardinal(vResult3));
end;

procedure TestISetup.TestCapture_OneObject_Callednil;
var
  vExpected, vResult: TObject;
begin
  vExpected := nil;

  FISetup.Capture(1).WillExecute<TObject>(procedure(const AVal: TObject)
    begin
      vResult := aVal;
    end).All('ProcOneObject');

  fMock.Instance.ProcOneObject(vExpected);

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestCapture_OneObject_CalledSame;
var
  vExpected, vResult: TObject;
begin
  vExpected := TObject.Create;

  FISetup.Capture(1).WillExecute<TObject>(procedure(const AVal: TObject)
    begin
      vResult := aVal;
    end).All('ProcOneObject');

  fMock.Instance.ProcOneObject(vExpected);

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
  vExpected.Free;
end;

procedure TestISetup.TestCapture_OneObject_CalledWrong;
var
  vExpected: TObject;
  vResult: TTest12;
begin
  StartExpectingException(EInvalidCast);
  vExpected := TObject.Create;
  try
    FISetup.Capture(1).WillExecute<TTest12>(procedure(const AVal: TTest12)
      begin
        vResult := aVal;
      end).All('ProcOneObject');

    fMock.Instance.ProcOneObject(vExpected);

    StopExpectingException;
  finally
    vExpected.Free;
  end;
end;

procedure TestISetup.TestCapture_OneString_CalledA;
var
  vExpected, vResult: String;
begin
  vExpected := 'A';

  FISetup.Capture(1).WillExecute<string>(procedure(const AVal: string)
    begin
      vResult := aVal;
    end).All('ProcOneString');

  fMock.Instance.ProcOneString(vExpected);

  CheckEqualsString(vExpected, vResult);
end;

procedure TestISetup.TestCapture_OneValue_CalledA;
var
  vExpected, vResult: String;
begin
  vExpected := 'A';

  FISetup.Capture(1).WillExecute(procedure(const AVal: TValue)
    begin
      vResult := aVal.AsString;
    end).All('ProcOneString');

  fMock.Instance.ProcOneString(vExpected);

  CheckEqualsString(vExpected, vResult);
end;

procedure TestISetup.TestWillReturn_OneString0WhenA_CalledA;
var
  vExpected, vResult: Integer;
begin
  vExpected := 0;
  FISetup.WillReturn(vExpected).When.FuncOneStringInt('A');

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturn_OneString0WhenA_CalledB;
var
  vExpected, vResult: Integer;
begin
  vExpected := 0;
  FISetup.WillReturn(vExpected).When.FuncOneStringInt('A');
  StartExpectingException(EMockException);

  vResult := fMock.Instance.FuncOneStringInt('B');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturn_NoParams0When_Called;
var
  vExpected, vResult: Integer;
begin
  vExpected := 0;
  FISetup.WillReturn(vExpected).When.FuncNoParamsInt;

  vResult := fMock.Instance.FuncNoParamsInt;

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturn_OneStringNilWhenA_CalledA;
var
  vExpected, vResult: TObject;
begin
  vExpected := nil;
  FISetup.WillReturn(vExpected).When.FuncOneStringObject('A');

  vResult := fMock.Instance.FuncOneStringObject('A');

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillReturn_OneStringNilWhenA_CalledB;
var
  vExpected, vResult: TObject;
begin
  vExpected := nil;
  FISetup.WillReturn(vExpected).When.FuncOneStringObject('A');
  StartExpectingException(EMockException);

  vResult := fMock.Instance.FuncOneStringObject('B');

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillReturn_NoParamsNilWhen_Called;
var
  vExpected, vResult: TObject;
begin
  vExpected := nil;
  FISetup.WillReturn(vExpected).When.FuncNoParamsObject;

  vResult := fMock.Instance.FuncNoParamsObject;

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillExecute_OneStringIntegerWhen_CalledOnce;
var
  vExpected, vResult: Integer;
  bCalled: boolean;
begin
  vExpected := 1;
  bCalled := False;

  FISetup.WillExecute(function (const args : TArray<TValue>; const ReturnType : TRttiType) : TValue
    begin
      bCalled := True;
      Result := TValue.From(vExpected);
    end).When.FuncOneStringInt('A');

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckTrue(bCalled);
  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillExecute_OneStringIntegerWhen_CalledWrong;
var
  vExpected, vResult: Integer;
  bCalled: boolean;
begin
  vExpected := 1;
  bCalled := False;

  FISetup.WillExecute(function (const args : TArray<TValue>; const ReturnType : TRttiType) : TValue
    begin
      bCalled := True;
      Result := TValue.From(vExpected);
    end).When.FuncOneStringInt('A');

  StartExpectingException(EMockException);

  vResult := fMock.Instance.FuncOneStringInt('B');

  CheckFalse(bCalled);
  CheckNotEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillExecute_OneStringIntegerAll_Called;
var
  vExpected, vResult: Integer;
  bCalled: boolean;
  AMethodName: string;
begin
  vExpected := 1;
  bCalled := False;
  AMethodName := 'FuncOneStringInt';

  FISetup.WillExecute(function (const args : TArray<TValue>; const ReturnType : TRttiType) : TValue
    begin
      bCalled := True;
      Result := TValue.From(vExpected);
    end).All(AMethodName);

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckTrue(bCalled);
  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillExecute_OneStringIntegerMethod_Called;
var
  vExpected, vResult: Integer;
  bCalled: boolean;
  AMethodName: string;
begin
  vExpected := 1;
  bCalled := False;
  AMethodName := 'FuncOneStringInt';

  FISetup.WillExecute(AMethodName, function (const args : TArray<TValue>; const ReturnType : TRttiType) : TValue
    begin
      bCalled := True;
      Result := TValue.From(vExpected);
    end);

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckTrue(bCalled);
  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnAndDefault_OneStringInteger0_CalledB;
var
  vExpected, vOther, vResult: Integer;
  sMethod: string;
begin
  vExpected := 0;
  vOther := 1;
  sMethod := 'FuncOneStringInt';
  FISetup.WillReturnDefault(sMethod, vExpected);
  FISetup.WillReturn(vOther).When.FuncOneStringInt('A');

  vResult := fMock.Instance.FuncOneStringInt('B');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnAndDefault_OneStringInteger1_CalledA;
var
  vExpected, vOther, vResult: Integer;
  sMethod: string;
begin
  vExpected := 1;
  vOther := 0;
  sMethod := 'FuncOneStringInt';
  FISetup.WillReturnDefault(sMethod, vOther);
  FISetup.WillReturn(vExpected).When.FuncOneStringInt('A');

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnAndDefault_OneStringObjectNil_CalledB;
var
  vExpected, vOther, vResult: TObject;
  sMethod: string;
begin
  vExpected := nil;
  vOther := TObject.Create;
  try
    sMethod := 'FuncOneStringObject';
    FISetup.WillReturn(vOther).When.FuncOneStringObject('A');
    FISetup.WillReturnDefault(sMethod, vExpected);

    vResult := fMock.Instance.FuncOneStringObject('B');

    CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
  finally
    vOther.Free;
  end;
end;

procedure TestISetup.TestWillReturnAndDefault_OneStringObjectOther_CalledA;
var
  vExpected, vOther, vResult: TObject;
  sMethod: string;
begin
  vExpected := nil;
  vOther := TObject.Create;
  try
    sMethod := 'FuncOneStringObject';
    FISetup.WillReturn(vExpected).When.FuncOneStringObject('A');
    FISetup.WillReturnDefault(sMethod, vOther);

    vResult := fMock.Instance.FuncOneStringObject('A');

    CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
  finally
    vOther.Free;
  end;
end;

procedure TestISetup.TestWillReturnDefault_NoParamsInteger0_Called;
var
  vExpected, vResult: Integer;
  sMethod: string;
begin
  vExpected := 0;
  sMethod := 'FuncNoParamsInt';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncNoParamsInt;

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnDefault_NoParamsObjectNil_Called;
var
  vExpected, vResult: TObject;
  sMethod: string;
begin
  vExpected := nil;
  sMethod := 'FuncNoParamsObject';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncNoParamsObject;

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillReturnDefault_OneStringInteger0_CalledA;
var
  vExpected, vResult: Integer;
  sMethod: string;
begin
  vExpected := 0;
  sMethod := 'FuncOneStringInt';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncOneStringInt('A');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnDefault_OneStringInteger0_CalledB;
var
  vExpected, vResult: Integer;
  sMethod: string;
begin
  vExpected := 0;
  sMethod := 'FuncOneStringInt';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncOneStringInt('B');

  CheckEquals(vExpected, vResult);
end;

procedure TestISetup.TestWillReturnDefault_OneStringObjectNil_CalledA;
var
  vExpected, vResult: TObject;
  sMethod: string;
begin
  vExpected := nil;
  sMethod := 'FuncOneStringObject';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncOneStringObject('A');

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillReturnDefault_OneStringObjectNil_CalledB;
var
  vExpected, vResult: TObject;
  sMethod: string;
begin
  vExpected := nil;
  sMethod := 'FuncOneStringObject';
  FISetup.WillReturnDefault(sMethod, vExpected);

  vResult := fMock.Instance.FuncOneStringObject('B');

  CheckEqualsHex(Cardinal(vExpected), Cardinal(vResult));
end;

procedure TestISetup.TestWillRaise_OneStringWhen_CalledOnce;
begin
  FISetup.WillRaise(ETesting, 'Testing').When.ProcOneString('A');

  StartExpectingException(ETesting);

  fMock.Instance.ProcOneString('A');

  CheckFalse(True);
end;

procedure TestISetup.TestWillRaise_OneStringWhen_CalledWrong;
begin
  FISetup.WillRaise(ETesting, 'Testing').When.ProcOneString('A');

  fMock.Instance.ProcOneString('B');

  CheckTrue(True);
end;

procedure TestISetup.TestWillRaise_OneStringAll_Called;
var
  AMethodName: string;
begin
  AMethodName := 'ProcOneString';

  FISetup.WillRaise(ETesting, 'Testing').All(AMethodName);

  StartExpectingException(ETesting);

  fMock.Instance.ProcOneString('A');

  CheckFalse(True);
end;

procedure TestISetup.TestWillRaise_OneStringMethod_Called;
var
  AMethodName: string;
begin
  AMethodName := 'ProcOneString';

  FISetup.WillRaise(AMethodName, ETesting, 'Testing');

  StartExpectingException(ETesting);

  fMock.Instance.ProcOneString('A');

  CheckFalse(True);
end;

{ TTestTidyCase }

procedure TTestTidyCase.CheckTidy(pExp, pRes: string);
begin
  CheckEqualsString(TidyString(pExp), TidyString(pRes));
end;

procedure TTestTidyCase.SetUp;
begin
  inherited;

  fMock := TMock<ITested>.Create;
end;

procedure TTestTidyCase.TearDown;
begin
  fMock.Free;

  inherited;
end;

initialization

// Register any test cases with the test runner
RegisterTest(TestIExpect.Suite);
RegisterTest(TestISetup.Suite);

end.
