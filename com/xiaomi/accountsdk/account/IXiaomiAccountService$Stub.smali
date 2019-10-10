.class public abstract Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$Proxy;
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

.field static final h:I = 0x8

.field static final i:I = 0x9

.field static final j:I = 0xa

.field static final k:I = 0xb

.field private static final l:Ljava/lang/String; = "com.xiaomi.accountsdk.account.IXiaomiAccountService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, v0, :cond_17b

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_182

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_10
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 213
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_28
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 203
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_3c
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 182
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_50

    .line 185
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 191
    :cond_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5f

    const/4 v0, 0x1

    .line 196
    :cond_5f
    invoke-virtual {p0, v2, p1, p4, v0}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_6a
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 166
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_83

    .line 172
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p1, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_86

    .line 176
    :cond_83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_86
    return v1

    :pswitch_87
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_94

    const/4 p1, 0x1

    goto :goto_95

    :cond_94
    const/4 p1, 0x0

    .line 147
    :goto_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a4

    .line 148
    sget-object p4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/accounts/Account;

    .line 153
    :cond_a4
    invoke-virtual {p0, p1, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(ZLandroid/accounts/Account;)Lcom/xiaomi/accountsdk/account/i;

    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b4

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/account/i;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b7

    .line 160
    :cond_b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b7
    return v1

    :pswitch_b8
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 122
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_cc

    .line 125
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 130
    :cond_cc
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->f(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_dc

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p1, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_df

    .line 137
    :cond_dc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_df
    return v1

    :pswitch_e0
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 107
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f4

    .line 110
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 115
    :cond_f4
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_ff
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 92
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_113

    .line 95
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 100
    :cond_113
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_11e
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 77
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_132

    .line 80
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 85
    :cond_132
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_13d
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_151

    .line 65
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 70
    :cond_151
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_15c
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_170

    .line 50
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    .line 55
    :cond_170
    invoke-virtual {p0, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_17b
    const-string p1, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_15c
        :pswitch_13d
        :pswitch_11e
        :pswitch_ff
        :pswitch_e0
        :pswitch_b8
        :pswitch_87
        :pswitch_6a
        :pswitch_3c
        :pswitch_28
        :pswitch_10
    .end packed-switch
.end method
