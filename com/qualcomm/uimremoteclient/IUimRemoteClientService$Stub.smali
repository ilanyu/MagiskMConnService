.class public abstract Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.uimremoteclient.IUimRemoteClientService"

.field static final TRANSACTION_deregisterCallback:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_uimRemoteApdu:I = 0x4

.field static final TRANSACTION_uimRemoteEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.qualcomm.uimremoteclient.IUimRemoteClientService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_74

    packed-switch p1, :pswitch_data_78

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 86
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 93
    invoke-virtual {p0, p1, p4, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->uimRemoteApdu(II[B)I

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 70
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 79
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->uimRemoteEvent(II[BI)I

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 60
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->deregisterCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 50
    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->registerCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I

    move-result p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 45
    :cond_74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_48
        :pswitch_2a
        :pswitch_10
    .end packed-switch
.end method
