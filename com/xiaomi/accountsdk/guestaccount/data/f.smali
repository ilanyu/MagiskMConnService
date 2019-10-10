.class public final Lcom/xiaomi/accountsdk/guestaccount/data/f;
.super Lcom/xiaomi/accountsdk/guestaccount/data/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "sid"

.field private static final c:Ljava/lang/String; = "psid"

.field private static final d:Ljava/lang/String; = "sdk_version"

.field private static final e:Ljava/lang/String; = "callback"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "psid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "psid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "callback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a:Landroid/os/Bundle;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
