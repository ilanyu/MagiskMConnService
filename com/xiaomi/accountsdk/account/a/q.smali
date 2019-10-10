.class public Lcom/xiaomi/accountsdk/account/a/q;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Lcom/xiaomi/accountsdk/account/data/h;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/h;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Need verification code"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/a/q;->b:Lcom/xiaomi/accountsdk/account/data/h;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/a/q;->c:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/a/q;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0, p1}, Lcom/xiaomi/accountsdk/account/a/q;-><init>(Lcom/xiaomi/accountsdk/account/data/h;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/account/data/h;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/q;->b:Lcom/xiaomi/accountsdk/account/data/h;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/q;->d:Ljava/lang/String;

    return-object v0
.end method
