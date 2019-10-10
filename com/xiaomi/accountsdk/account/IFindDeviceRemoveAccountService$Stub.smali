.class public abstract Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_d

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_d
    const-string p1, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    const-string p1, "com.xiaomi.accountsdk.account.IFindDeviceRemoveAccountService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/IFindDeviceRemoveAccountService$Stub;->a()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
