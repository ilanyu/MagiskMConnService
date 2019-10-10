.class public abstract Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field private static final d:Ljava/lang/String; = "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4a

    packed-switch p1, :pswitch_data_50

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_e
    const-string p1, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 68
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->a(ILjava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    const-string p1, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->a()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2e
    const-string p1, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 50
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    .line 55
    :goto_43
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_4a
    const-string p1, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method
