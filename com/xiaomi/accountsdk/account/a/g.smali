.class public Lcom/xiaomi/accountsdk/account/a/g;
.super Lcom/xiaomi/accountsdk/account/a/a;
.source "SourceFile"


# static fields
.field private static final h:J = 0x1L


# instance fields
.field public e:Lcom/xiaomi/accountsdk/account/data/h;

.field public f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    .line 21
    iput-boolean p3, p0, Lcom/xiaomi/accountsdk/account/a/g;->g:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    if-eqz p1, :cond_6

    const v0, 0x11180

    goto :goto_9

    :cond_6
    const v0, 0x11172

    :goto_9
    if-eqz p1, :cond_e

    const-string v1, "password error or passToken invalid"

    goto :goto_10

    :cond_e
    const-string v1, "no password"

    .line 14
    :goto_10
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    .line 16
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/a/g;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/a/g;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/a/g;->e:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/h;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/g;->e:Lcom/xiaomi/accountsdk/account/data/h;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/a/g;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/a/g;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/a/g;->g:Z

    return v0
.end method
