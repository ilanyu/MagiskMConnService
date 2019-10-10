.class public Lcom/xiaomi/accountsdk/request/c;
.super Lcom/xiaomi/accountsdk/account/a/d;
.source "SourceFile"


# static fields
.field private static final d:J = 0x1ad516af1ad6e348L


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/d;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->e:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/account/a/d;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->e:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/c;->f:Ljava/lang/String;

    return-void
.end method
