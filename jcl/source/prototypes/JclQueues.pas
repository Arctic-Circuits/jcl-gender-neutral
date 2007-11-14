{**************************************************************************************************}
{                                                                                                  }
{ Project JEDI Code Library (JCL)                                                                  }
{                                                                                                  }
{ The contents of this file are subject to the Mozilla Public License Version 1.1 (the "License"); }
{ you may not use this file except in compliance with the License. You may obtain a copy of the    }
{ License at http://www.mozilla.org/MPL/                                                           }
{                                                                                                  }
{ Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF   }
{ ANY KIND, either express or implied. See the License for the specific language governing rights  }
{ and limitations under the License.                                                               }
{                                                                                                  }
{ The Original Code is Queue.pas.                                                                  }
{                                                                                                  }
{ The Initial Developer of the Original Code is Jean-Philippe BEMPEL aka RDM. Portions created by  }
{ Jean-Philippe BEMPEL are Copyright (C) Jean-Philippe BEMPEL (rdm_30 att yahoo dott com)          }
{ All rights reserved.                                                                             }
{                                                                                                  }
{ Contributors:                                                                                    }
{   Florent Ouchet (outchy)                                                                        }
{                                                                                                  }
{**************************************************************************************************}
{                                                                                                  }
{ The Delphi Container Library                                                                     }
{                                                                                                  }
{**************************************************************************************************}
{                                                                                                  }
{ Last modified: $Date::                                                                         $ }
{ Revision:      $Rev::                                                                          $ }
{ Author:        $Author::                                                                       $ }
{                                                                                                  }
{**************************************************************************************************}

unit JclQueues;

{$I jcl.inc}

interface

uses
  {$IFDEF UNITVERSIONING}
  JclUnitVersioning,
  {$ENDIF UNITVERSIONING}
  {$IFDEF SUPPORTS_GENERICS}
  {$IFDEF CLR}
  System.Collections.Generic,
  {$ENDIF CLR}
  JclAlgorithms,
  {$ENDIF SUPPORTS_GENERICS}
  JclBase, JclAbstractContainers, JclContainerIntf;
{$I containers\JclQueues.imp}
type
(*$JPPEXPANDMACRO JCLQUEUEINT(TJclIntfQueue,IJclIntfQueue,TJclIntfAbstractContainer,IInterface,JclBase.TDynIInterfaceArray, IJclIntfEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AInterface: IInterface)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclAnsiStrQueue,IJclAnsiStrQueue,TJclAnsiStrAbstractContainer,AnsiString,JclBase.TDynAnsiStringArray, IJclStrContainer\, IJclAnsiStrContainer\, IJclAnsiStrEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AString: AnsiString)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclWideStrQueue,IJclWideStrQueue,TJclWideStrAbstractContainer,WideString,JclBase.TDynWideStringArray, IJclStrContainer\, IJclWideStrContainer\, IJclWideStrEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AString: WideString)*)

  {$IFDEF CONTAINER_ANSISTR}
  TJclStrQueue = TJclAnsiStrQueue;
  {$ENDIF CONTAINER_ANSISTR}
  {$IFDEF CONTAINER_WIDESTR}
  TJclStrQueue = TJclWideStrQueue;
  {$ENDIF CONTAINER_WIDESTR}

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclSingleQueue,IJclSingleQueue,TJclSingleAbstractContainer,Single,JclBase.TDynSingleArray, IJclSingleContainer\, IJclSingleEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AValue: Single)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclDoubleQueue,IJclDoubleQueue,TJclDoubleAbstractContainer,Double,JclBase.TDynDoubleArray, IJclDoubleContainer\, IJclDoubleEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AValue: Double)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclExtendedQueue,IJclExtendedQueue,TJclExtendedAbstractContainer,Extended,JclBase.TDynExtendedArray, IJclExtendedContainer\, IJclExtendedEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AValue: Extended)*)

  {$IFDEF MATH_EXTENDED_PRECISION}
  TJclFloatQueue = TJclExtendedQueue;
  {$ENDIF MATH_EXTENDED_PRECISION}
  {$IFDEF MATH_DOUBLE_PRECISION}
  TJclFloatQueue = TJclDoubleQueue;
  {$ENDIF MATH_DOUBLE_PRECISION}
  {$IFDEF MATH_SINGLE_PRECISION}
  TJclFloatQueue = TJclSingleQueue;
  {$ENDIF MATH_SINGLE_PRECISION}

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclIntegerQueue,IJclIntegerQueue,TJclIntegerAbstractContainer,Integer,JclBase.TDynIntegerArray, IJclIntegerEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,AValue: Integer)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclCardinalQueue,IJclCardinalQueue,TJclCardinalAbstractContainer,Cardinal,JclBase.TDynCardinalArray, IJclCardinalEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,AValue: Cardinal)*)

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclInt64Queue,IJclInt64Queue,TJclInt64AbstractContainer,Int64,JclBase.TDynInt64Array, IJclInt64EqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,const AValue: Int64)*)

  {$IFNDEF CLR}
(*$JPPEXPANDMACRO JCLQUEUEINT(TJclPtrQueue,IJclPtrQueue,TJclPtrAbstractContainer,Pointer,JclBase.TDynPointerArray, IJclPtrEqualityComparer\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,,APtr: Pointer)*)
  {$ENDIF ~CLR}

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclQueue,IJclQueue,TJclAbstractContainer,TObject,JclBase.TDynObjectArray, IJclEqualityComparer\, IJclObjectOwner\,,,
    function CreateEmptyContainer: TJclAbstractContainerBase; override;,,; AOwnsObjects: Boolean,AObject: TObject)*)

  {$IFDEF SUPPORTS_GENERICS}

(*$JPPEXPANDMACRO JCLQUEUEINT(TJclQueue<T>,IJclQueue<T>,TJclAbstractContainer<T>,T,TJclBase<T>.TDynArray, IJclEqualityComparer<T>\, IJclItemOwner<T>\,,,,,; AOwnsItems: Boolean,const AItem: T)*)

  // E = external helper to compare items for equality (GetHashCode is not used)
  TJclQueueE<T> = class(TJclQueue<T>, {$IFDEF THREADSAFE} IJclLockable, {$ENDIF THREADSAFE}
    IJclIntfCloneable, IJclCloneable, IJclPackable, IJclGrowable, IJclContainer, IJclQueue<T>, IJclItemOwner<T>)
  private
    FEqualityComparer: IEqualityComparer<T>;
  protected
    procedure AssignPropertiesTo(Dest: TJclAbstractContainerBase); override;
    function CreateEmptyContainer: TJclAbstractContainerBase; override;
    function ItemsEqual(const A, B: T): Boolean; override;
    { IJclIntfCloneable }
    function IJclIntfCloneable.Clone = IntfClone;
  public
    constructor Create(const AEqualityComparer: IEqualityComparer<T>; ACapacity: Integer; AOwnsItems: Boolean);

    property EqualityComparer: IEqualityComparer<T> read FEqualityComparer write FEqualityComparer;
  end;

  // F = function to compare items for equality
  TJclQueueF<T> = class(TJclQueue<T>, {$IFDEF THREADSAFE} IJclLockable, {$ENDIF THREADSAFE}
    IJclIntfCloneable, IJclCloneable, IJclPackable, IJclGrowable, IJclContainer, IJclQueue<T>, IJclItemOwner<T>)
  private
    FEqualityCompare: TEqualityCompare<T>;
  protected
    procedure AssignPropertiesTo(Dest: TJclAbstractContainerBase); override;
    function CreateEmptyContainer: TJclAbstractContainerBase; override;
    function ItemsEqual(const A, B: T): Boolean; override;
    { IJclIntfCloneable }
    function IJclIntfCloneable.Clone = IntfClone;
  public
    constructor Create(AEqualityCompare: TEqualityCompare<T>; ACapacity: Integer; AOwnsItems: Boolean);

    property EqualityCompare: TEqualityCompare<T> read FEqualityCompare write FEqualityCompare;
  end;

  // I = items can compare themselves to an other
  TJclQueueI<T: IEquatable<T>> = class(TJclQueue<T>, {$IFDEF THREADSAFE} IJclLockable, {$ENDIF THREADSAFE}
    IJclIntfCloneable, IJclCloneable, IJclPackable, IJclGrowable, IJclContainer, IJclQueue<T>, IJclItemOwner<T>)
  protected
    function CreateEmptyContainer: TJclAbstractContainerBase; override;
    function ItemsEqual(const A, B: T): Boolean; override;
    { IJclIntfCloneable }
    function IJclIntfCloneable.Clone = IntfClone;
  end;
  {$ENDIF SUPPORTS_GENERICS}

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL$';
    Revision: '$Revision$';
    Date: '$Date$';
    LogPath: 'JCL\source\common'
    );
{$ENDIF UNITVERSIONING}

implementation

uses
  SysUtils;

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclIntfQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclIntfQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclIntfQueue,,,const AInterface: IInterface,AInterface,IInterface,nil,JclBase.MoveArray,FreeObject)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclAnsiStrQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclAnsiStrQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclAnsiStrQueue,,,const AString: AnsiString,AString,AnsiString,'',JclBase.MoveArray,FreeString)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclWideStrQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclWideStrQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclWideStrQueue,,,const AString: WideString,AString,WideString,'',JclBase.MoveArray,FreeString)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclSingleQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclSingleQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclSingleQueue,,,const AValue: Single,AValue,Single,0.0,JclBase.MoveArray,FreeSingle)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclDoubleQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclDoubleQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclDoubleQueue,,,const AValue: Double,AValue,Double,0.0,JclBase.MoveArray,FreeDouble)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclExtendedQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclExtendedQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclExtendedQueue,,,const AValue: Extended,AValue,Extended,0.0,JclBase.MoveArray,FreeExtended)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclIntegerQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclIntegerQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclIntegerQueue,,,AValue: Integer,AValue,Integer,0,JclBase.MoveArray,FreeInteger)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclCardinalQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclCardinalQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclCardinalQueue,,,AValue: Cardinal,AValue,Cardinal,0,JclBase.MoveArray,FreeCardinal)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclInt64Queue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclInt64Queue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclInt64Queue,,,const AValue: Int64,AValue,Int64,0,JclBase.MoveArray,FreeInt64)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$IFNDEF CLR}
{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclPtrQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclPtrQueue.Create(Size + 1);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclPtrQueue,,,APtr: Pointer,APtr,Pointer,nil,JclBase.MoveArray,FreePointer)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}
{$ENDIF ~CLR}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER
function TJclQueue.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclQueue.Create(Size + 1, False);
  AssignPropertiesTo(Result);
end;
}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclQueue,; AOwnsObjects: Boolean,\, AOwnsObjects,AObject: TObject,AObject,TObject,nil,JclBase.MoveArray,FreeObject)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}

{$IFDEF SUPPORTS_GENERICS}

{$JPPDEFINEMACRO CREATEEMPTYCONTAINER}
(*$JPPEXPANDMACRO JCLQUEUEIMP(TJclQueue<T>,; AOwnsItems: Boolean,\, AOwnsItems,const AItem: T,AItem,T,Default(T),TJclBase<T>.MoveArray,FreeItem)*)
{$JPPUNDEFMACRO CREATEEMPTYCONTAINER}
//=== { TJclQueueE<T> } ======================================================

constructor TJclQueueE<T>.Create(const AEqualityComparer: IEqualityComparer<T>;
  ACapacity: Integer; AOwnsItems: Boolean);
begin
  inherited Create(ACapacity, AOwnsItems);
  FEqualityComparer := AEqualityComparer;
end;

procedure TJclQueueE<T>.AssignPropertiesTo(Dest: TJclAbstractContainerBase);
begin
  inherited AssignPropertiesTo(Dest);
  if Dest is TJclQueueE<T> then
    TJclQueueE<T>(Dest).FEqualityComparer := FEqualityComparer;
end;

function TJclQueueE<T>.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclQueueE<T>.Create(EqualityComparer, Size + 1, False);
  AssignPropertiesTo(Result);
end;

function TJclQueueE<T>.ItemsEqual(const A, B: T): Boolean;
begin
  if EqualityComparer = nil then
    raise EJclNoEqualityComparerError.Create;
  Result := EqualityComparer.Equals(A, B);
end;

//=== { TJclQueueF<T> } ======================================================

constructor TJclQueueF<T>.Create(AEqualityCompare: TEqualityCompare<T>;
  ACapacity: Integer; AOwnsItems: Boolean);
begin
  inherited Create(ACapacity, AOwnsItems);
  FEqualityCompare := AEqualityCompare;
end;

procedure TJclQueueF<T>.AssignPropertiesTo(Dest: TJclAbstractContainerBase);
begin
  inherited AssignPropertiesTo(Dest);
  if Dest is TJclQueueF<T> then
    TJclQueueF<T>(Dest).FEqualityCompare := FEqualityCompare;
end;

function TJclQueueF<T>.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclQueueF<T>.Create(EqualityCompare, Size + 1, False);
  AssignPropertiesTo(Result);
end;

function TJclQueueF<T>.ItemsEqual(const A, B: T): Boolean;
begin
  if not Assigned(EqualityCompare) then
    raise EJclNoEqualityComparerError.Create;
  Result := EqualityCompare(A, B);
end;

//=== { TJclQueueI<T> } ======================================================

function TJclQueueI<T>.CreateEmptyContainer: TJclAbstractContainerBase;
begin
  Result := TJclQueueI<T>.Create(Size + 1, False);
  AssignPropertiesTo(Result);
end;

function TJclQueueI<T>.ItemsEqual(const A, B: T): Boolean;
begin
  Result := A.Equals(B);
end;

{$ENDIF SUPPORTS_GENERICS}

{$IFDEF UNITVERSIONING}
initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}

end.