/*------------------------------------------------------------------------
    File        : ListTester
    Purpose     : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OEUnit.Assertion.*.
USING OEMock.Util.List.
USING OEMock.Reflection.BaseParameter.

ROUTINE-LEVEL ON ERROR UNDO, THROW.

CLASS OEMock.Tests.Util.ListTester:
    
    @Test.
    METHOD PUBLIC VOID ConstructorSetsDestroyOnDestructToTrue():
        DEFINE VARIABLE list AS List NO-UNDO.
        list = NEW List().
        Assert:IsTrue(list:DestroyOnDestruct).
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID ConstructorCreatesBlankList():
        DEFINE VARIABLE list AS List NO-UNDO.
        list = NEW List().
        Assert:AreEqual(list:Count,0).
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID AddItemIncrementsCounter():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:AreEqual(list:Count,1).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID AddItemDoesNotIncrementCounterWhenNull():
        DEFINE VARIABLE list AS List NO-UNDO.
        list = NEW List().
        list:AddItem(?).
        Assert:AreEqual(list:Count,0).
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID EmptyListClearsList():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:AreEqual(list:Count,1).
        list:EmptyList().
        Assert:AreEqual(list:Count,0).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetFirstIsNotNull():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:IsNotNull(list:GetFirst()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetFirstIsNullOnBlankList():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        Assert:IsNull(list:GetFirst()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetLastIsNotNull():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:IsNotNull(list:GetLast()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetLastIsNullOnBlankList():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        Assert:IsNull(list:GetLast()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetNextIsNotNull():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:IsNotNull(list:GetNext()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetNextIsNullOnBlankList():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        Assert:IsNull(list:GetNext()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetPrevIsNotNull():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        list:AddItem(parm).
        Assert:IsNotNull(list:GetPrev()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.
    
    @Test.
    METHOD PUBLIC VOID GetPrevIsNullOnBlankList():
        DEFINE VARIABLE list AS List NO-UNDO.
        DEFINE VARIABLE parm AS BaseParameter NO-UNDO.
        list = NEW List().
        parm = NEW BaseParameter().
        Assert:IsNull(list:GetPrev()).
        IF VALID-OBJECT(parm) THEN DELETE OBJECT parm.
        IF VALID-OBJECT(list) THEN DELETE OBJECT list.
    END METHOD.

END CLASS.