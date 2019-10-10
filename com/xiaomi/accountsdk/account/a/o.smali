.class public Lcom/xiaomi/accountsdk/account/a/o;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/a/o;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/a/o;->c:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/a/o;->d:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/a/o;->d:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    return-object v0
.end method
