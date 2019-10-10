.class public abstract Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.super Lcom/xiaomi/accountsdk/request/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;,
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PassportLoginRequest"


# instance fields
.field private final b:Lcom/xiaomi/accountsdk/request/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/o;)V
    .registers 7

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/request/o;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/m;

    move-result-object p1

    if-nez p1, :cond_25

    const-string p1, "PassportLoginRequest"

    const-string v1, "CA-Request not ready for login %s, fallback to https way"

    const/4 v2, 0x1

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/utils/d;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    goto :goto_27

    .line 32
    :cond_25
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    :goto_27
    return-void
.end method

.method private a(Lcom/xiaomi/accountsdk/request/o;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/m;
    .registers 8

    .line 37
    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->d()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 38
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->a()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_60

    .line 41
    :cond_e
    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    return-object v1

    .line 46
    :cond_17
    sget-object v1, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/o;->a()Lcom/xiaomi/accountsdk/request/o;

    move-result-object p1

    .line 49
    iget-object v3, p1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/utils/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    const-string v2, "_ver"

    .line 51
    invoke-virtual {p1, v2, v1}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "sid"

    invoke-virtual {v2, v4}, Lcom/xiaomi/accountsdk/utils/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_sid"

    .line 58
    invoke-virtual {p1, v2, v3}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    const-string v4, "_ver"

    invoke-virtual {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 60
    iget-object v1, p1, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    const-string v2, "_sid"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    const-string v1, "x-mistats-header"

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/accountsdk/request/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->a(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportCARequest;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;-><init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest;Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/n;)V

    return-object v0

    :cond_60
    :goto_60
    return-object v1
.end method


# virtual methods
.method protected abstract a(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end method

.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/a;

    const-string v1, "login/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    instance-of v3, v3, Lcom/xiaomi/accountsdk/request/m;

    if-eqz v3, :cond_17

    const-string v3, "withCA"

    goto :goto_19

    :cond_17
    const-string v3, "withoutCA"

    :goto_19
    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/stat/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/a;->a()V

    .line 111
    :try_start_28
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/n;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_2e
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_28 .. :try_end_2e} :catch_39
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_34
    .catchall {:try_start_28 .. :try_end_2e} :catchall_32

    .line 121
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/a;->b()V

    return-object v1

    :catchall_32
    move-exception v1

    goto :goto_4c

    :catch_34
    move-exception v1

    .line 118
    :try_start_35
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/a;->a(Ljava/lang/Exception;)V

    .line 119
    throw v1

    :catch_39
    move-exception v1

    .line 113
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaomi/a/b/a;

    if-eqz v2, :cond_4b

    .line 114
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/stat/a;->a(Ljava/lang/Exception;)V

    .line 116
    :cond_4b
    throw v1
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_32

    .line 121
    :goto_4c
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/a;->b()V

    throw v1
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/m;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->b:Lcom/xiaomi/accountsdk/request/n;

    check-cast v0, Lcom/xiaomi/accountsdk/request/m;

    .line 127
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/m;->b()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
