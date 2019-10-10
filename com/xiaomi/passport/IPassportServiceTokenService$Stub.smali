.class public abstract Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/IPassportServiceTokenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/IPassportServiceTokenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/IPassportServiceTokenService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field private static final h:Ljava/lang/String; = "com.xiaomi.passport.IPassportServiceTokenService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, v0, :cond_bf

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c6

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_f
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 124
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_28

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    .line 134
    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2b
    return v1

    :pswitch_2c
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 108
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_45

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_48

    .line 118
    :cond_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_48
    return v1

    :pswitch_49
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 100
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->c()Z

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_59
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 92
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->b()Z

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_69
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->a()Z

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_79
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8d

    .line 66
    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    goto :goto_8e

    :cond_8d
    const/4 p1, 0x0

    .line 71
    :goto_8e
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9e

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a1

    .line 78
    :cond_9e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a1
    return v1

    :pswitch_a2
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_bb

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_be

    .line 57
    :cond_bb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_be
    return v1

    :cond_bf
    const-string p1, "com.xiaomi.passport.IPassportServiceTokenService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_79
        :pswitch_69
        :pswitch_59
        :pswitch_49
        :pswitch_2c
        :pswitch_f
    .end packed-switch
.end method
