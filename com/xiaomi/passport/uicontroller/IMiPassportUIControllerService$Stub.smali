.class public abstract Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field private static final f:Ljava/lang/String; = "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_c0

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_c6

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_10
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 124
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_29

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    .line 134
    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    return v1

    :pswitch_2d
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_41

    .line 113
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 118
    :cond_41
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_48
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 89
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5c

    .line 92
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    .line 97
    :cond_5c
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6c

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6f

    .line 104
    :cond_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6f
    return v1

    :pswitch_70
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 68
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_84

    .line 71
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    .line 76
    :cond_84
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_94

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_97

    .line 83
    :cond_94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_97
    return v1

    :pswitch_98
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ac

    .line 50
    sget-object p1, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    .line 55
    :cond_ac
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;->a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_bc

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_bf

    .line 62
    :cond_bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_bf
    return v1

    :cond_c0
    const-string p1, "com.xiaomi.passport.uicontroller.IMiPassportUIControllerService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_98
        :pswitch_70
        :pswitch_48
        :pswitch_2d
        :pswitch_10
    .end packed-switch
.end method
