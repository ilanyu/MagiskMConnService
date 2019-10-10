.class final Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .registers 3

    .line 72
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .registers 2

    .line 77
    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$1;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$1;->a(I)[Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    move-result-object p1

    return-object p1
.end method
