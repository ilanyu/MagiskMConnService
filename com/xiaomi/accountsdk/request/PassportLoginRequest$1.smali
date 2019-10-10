.class Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;
.super Lcom/xiaomi/accountsdk/request/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/request/o;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest;Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/n;)V
    .registers 4

    .line 65
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/accountsdk/request/m;-><init>(Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/n;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .registers 3

    .line 92
    instance-of v0, p1, Lcom/xiaomi/accountsdk/request/k;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/xiaomi/accountsdk/request/k;

    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/request/k;->e:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method protected a(Ljava/lang/Exception;)Z
    .registers 3

    .line 83
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_29

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/c;

    if-nez v0, :cond_29

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/a/b/a;

    if-nez v0, :cond_29

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/a;

    if-nez v0, :cond_29

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    return p1
.end method

.method protected c()V
    .registers 6

    const-string v0, "PassportLoginRequest"

    const-string v1, "login %s with CA-Request succeeded to receive data from server"

    const/4 v2, 0x1

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected d()V
    .registers 6

    const-string v0, "PassportLoginRequest"

    const-string v1, "login %s with CA-Request failed to receive data from server"

    const/4 v2, 0x1

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->a:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
