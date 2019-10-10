.class final Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .registers 3

    .line 94
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .registers 2

    .line 99
    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;->a(I)[Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    return-object p1
.end method
