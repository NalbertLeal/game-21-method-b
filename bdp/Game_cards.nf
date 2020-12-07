﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game_cards))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game_cards))==(Machine(Game_cards));
  Level(Machine(Game_cards))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game_cards)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game_cards))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game_cards))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game_cards))==(?);
  List_Includes(Machine(Game_cards))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game_cards))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game_cards))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game_cards))==(?);
  Context_List_Variables(Machine(Game_cards))==(?);
  Abstract_List_Variables(Machine(Game_cards))==(?);
  Local_List_Variables(Machine(Game_cards))==(?);
  List_Variables(Machine(Game_cards))==(?);
  External_List_Variables(Machine(Game_cards))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game_cards))==(?);
  Abstract_List_VisibleVariables(Machine(Game_cards))==(?);
  External_List_VisibleVariables(Machine(Game_cards))==(?);
  Expanded_List_VisibleVariables(Machine(Game_cards))==(?);
  List_VisibleVariables(Machine(Game_cards))==(?);
  Internal_List_VisibleVariables(Machine(Game_cards))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game_cards))==(btrue);
  Gluing_List_Invariant(Machine(Game_cards))==(btrue);
  Expanded_List_Invariant(Machine(Game_cards))==(btrue);
  Abstract_List_Invariant(Machine(Game_cards))==(btrue);
  Context_List_Invariant(Machine(Game_cards))==(btrue);
  List_Invariant(Machine(Game_cards))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Game_cards))==(btrue);
  Abstract_List_Assertions(Machine(Game_cards))==(btrue);
  Context_List_Assertions(Machine(Game_cards))==(btrue);
  List_Assertions(Machine(Game_cards))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game_cards))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game_cards))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game_cards))==(skip);
  Context_List_Initialisation(Machine(Game_cards))==(skip);
  List_Initialisation(Machine(Game_cards))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game_cards))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Game_cards))==(btrue);
  List_Constraints(Machine(Game_cards))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game_cards))==(?);
  List_Operations(Machine(Game_cards))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game_cards))==(CARDS_POINTS);
  Inherited_List_Constants(Machine(Game_cards))==(?);
  List_Constants(Machine(Game_cards))==(CARDS_POINTS)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game_cards),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE});
  Context_List_Enumerated(Machine(Game_cards))==(?);
  Context_List_Defered(Machine(Game_cards))==(?);
  Context_List_Sets(Machine(Game_cards))==(?);
  List_Valuable_Sets(Machine(Game_cards))==(?);
  Inherited_List_Enumerated(Machine(Game_cards))==(?);
  Inherited_List_Defered(Machine(Game_cards))==(?);
  Inherited_List_Sets(Machine(Game_cards))==(?);
  List_Enumerated(Machine(Game_cards))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Defered(Machine(Game_cards))==(?);
  List_Sets(Machine(Game_cards))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Set_Definition(Machine(Game_cards),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Machine(Game_cards),PLAYERS)==({P_ONE,P_TWO,NOPLAYER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game_cards))==(?);
  Expanded_List_HiddenConstants(Machine(Game_cards))==(?);
  List_HiddenConstants(Machine(Game_cards))==(tuple_second,tuple_first,PLAYABLE,CARDS);
  External_List_HiddenConstants(Machine(Game_cards))==(tuple_second,tuple_first,PLAYABLE,CARDS)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game_cards))==(btrue);
  Context_List_Properties(Machine(Game_cards))==(btrue);
  Inherited_List_Properties(Machine(Game_cards))==(btrue);
  List_Properties(Machine(Game_cards))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,vt).(ct: CARDS_TYPES & vt: CARDS_VALUE | ct) & tuple_second = %(ct,vt).(ct: CARDS_TYPES & vt: CARDS_VALUE | vt) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game_cards)) == (CARDS_POINTS,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (tuple_second,tuple_first,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_POINTS);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Game_cards)) == (Type(CARDS_TYPES) == Cst(SetOf(etype(CARDS_TYPES,0,4)));Type(CARDS_VALUE) == Cst(SetOf(etype(CARDS_VALUE,0,13)));Type(PLAYERS) == Cst(SetOf(etype(PLAYERS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Game_cards)) == (Type(CLUBS) == Cst(etype(CARDS_TYPES,0,4));Type(DIAMONDS) == Cst(etype(CARDS_TYPES,0,4));Type(HEARTS) == Cst(etype(CARDS_TYPES,0,4));Type(SPADES) == Cst(etype(CARDS_TYPES,0,4));Type(NOTYPE) == Cst(etype(CARDS_TYPES,0,4));Type(ONE) == Cst(etype(CARDS_VALUE,0,13));Type(TWO) == Cst(etype(CARDS_VALUE,0,13));Type(THREE) == Cst(etype(CARDS_VALUE,0,13));Type(FOUR) == Cst(etype(CARDS_VALUE,0,13));Type(FIVE) == Cst(etype(CARDS_VALUE,0,13));Type(SIX) == Cst(etype(CARDS_VALUE,0,13));Type(SEVEN) == Cst(etype(CARDS_VALUE,0,13));Type(EIGHT) == Cst(etype(CARDS_VALUE,0,13));Type(NINE) == Cst(etype(CARDS_VALUE,0,13));Type(KING) == Cst(etype(CARDS_VALUE,0,13));Type(QUEEN) == Cst(etype(CARDS_VALUE,0,13));Type(JACK) == Cst(etype(CARDS_VALUE,0,13));Type(ACE) == Cst(etype(CARDS_VALUE,0,13));Type(NOVALUE) == Cst(etype(CARDS_VALUE,0,13));Type(P_ONE) == Cst(etype(PLAYERS,0,2));Type(P_TWO) == Cst(etype(PLAYERS,0,2));Type(NOPLAYER) == Cst(etype(PLAYERS,0,2));Type(CARDS_POINTS) == Cst(SetOf(etype(CARDS_VALUE,?,?)*btype(INTEGER,?,?))))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(Game_cards)) == (Type(tuple_second) == HCst(SetOf(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)*etype(CARDS_VALUE,?,?)));Type(tuple_first) == HCst(SetOf(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)*etype(CARDS_TYPES,?,?)));Type(PLAYABLE) == HCst(SetOf(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)));Type(CARDS) == HCst(SetOf(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
