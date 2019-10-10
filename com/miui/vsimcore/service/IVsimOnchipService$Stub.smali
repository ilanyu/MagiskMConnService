.class public abstract Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/vsimcore/service/IVsimOnchipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/vsimcore/service/IVsimOnchipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/service/IVsimOnchipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.vsimcore.service.IVsimOnchipService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerToModem:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.vsimcore.service.IVsimOnchipService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/vsimcore/service/IVsimOnchipService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.miui.vsimcore.service.IVsimOnchipService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/miui/vsimcore/service/IVsimOnchipService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/miui/vsimcore/service/IVsimOnchipService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.miui.vsimcore.service.IVsimOnchipService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4e

    packed-switch p1, :pswitch_data_52

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 68
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->registerToModem(I)I

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 58
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->unregisterCallback(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)I

    move-result p1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 48
    :pswitch_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/service/IVsimOnchipService$Stub;->registerCallback(Lcom/miui/vsimcore/service/IVsimOnchipServiceCallback;)I

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 43
    :cond_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_38
        :pswitch_22
        :pswitch_10
    .end packed-switch
.end method
