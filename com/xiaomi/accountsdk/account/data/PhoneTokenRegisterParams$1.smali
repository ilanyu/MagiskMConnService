.class final Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .registers 8

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const-string v0, "phone"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ticket_token"

    .line 130
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activator_phone_info"

    .line 131
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const-string v4, "region"

    .line 132
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "service_id"

    .line 133
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;-><init>()V

    .line 135
    invoke-virtual {v5, v0, v2}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .registers 2

    const/4 p1, 0x0

    .line 145
    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$1;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$1;->a(I)[Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object p1

    return-object p1
.end method
