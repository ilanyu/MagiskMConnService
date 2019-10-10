.class public abstract Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.uimremoteclient.IUimRemoteClientServiceCallback"

.field static final TRANSACTION_uimRemoteApduIndication:I = 0x3

.field static final TRANSACTION_uimRemoteApduResponse:I = 0x2

.field static final TRANSACTION_uimRemoteConnectIndication:I = 0x4

.field static final TRANSACTION_uimRemoteDisconnectIndication:I = 0x5

.field static final TRANSACTION_uimRemoteEventResponse:I = 0x1

.field static final TRANSACTION_uimRemotePowerDownIndication:I = 0x7

.field static final TRANSACTION_uimRemotePowerUpIndication:I = 0x6

.field static final TRANSACTION_uimRemoteRadioStateIndication:I = 0x9

.field static final TRANSACTION_uimRemoteResetIndication:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientServiceCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientServiceCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientServiceCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9e

    packed-switch p1, :pswitch_data_a2

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteRadioStateIndication(II)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 117
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteResetIndication(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 108
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemotePowerDownIndication(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 99
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemotePowerUpIndication(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 90
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteDisconnectIndication(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 81
    :pswitch_5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteConnectIndication(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 70
    :pswitch_68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteApduIndication(I[B)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 59
    :pswitch_7a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteApduResponse(II)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_8c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->uimRemoteEventResponse(II)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_9e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_5a
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
        :pswitch_22
        :pswitch_10
    .end packed-switch
.end method
