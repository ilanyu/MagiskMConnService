.class public final Lcom/xiaomi/accountsdk/guestaccount/data/c;
.super Lcom/xiaomi/accountsdk/guestaccount/data/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "error_code"

.field private static final c:Ljava/lang/String; = "error_msg"

.field private static final d:Ljava/lang/String; = "sdk_version"

.field private static final e:Ljava/lang/String; = "intent"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Landroid/content/Intent;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()I
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    return-object v0
.end method

.method public e()Landroid/content/Intent;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method
