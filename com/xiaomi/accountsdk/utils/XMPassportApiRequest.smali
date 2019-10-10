.class public abstract Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest$WebMethod;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7f

    .line 22
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->e()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/e;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/e;

    move-result-object v2

    if-nez v2, :cond_10

    goto/16 :goto_7f

    .line 27
    :cond_10
    iget-object v3, v2, Lcom/xiaomi/accountsdk/account/data/e;->a:Ljava/lang/String;

    .line 28
    iget-object v8, v2, Lcom/xiaomi/accountsdk/account/data/e;->b:Ljava/lang/String;

    if-eqz v3, :cond_7f

    if-nez v8, :cond_19

    goto :goto_7f

    .line 33
    :cond_19
    new-instance v5, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    .line 34
    invoke-virtual {p0, v5}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->a(Lcom/xiaomi/accountsdk/utils/k;)V

    .line 36
    new-instance v6, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    const-string v2, "serviceToken"

    .line 37
    invoke-virtual {v6, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string v3, "cUserId"

    .line 40
    invoke-virtual {v6, v3, v2}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    goto :goto_40

    :cond_37
    const-string v2, "userId"

    .line 42
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/xiaomi/accountsdk/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    .line 47
    :goto_40
    :try_start_40
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->d()Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest$WebMethod;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest$WebMethod;->b:Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest$WebMethod;

    if-ne v2, v3, :cond_57

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-instance v9, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/accountsdk/request/r;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object v2

    goto :goto_65

    .line 50
    :cond_57
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-instance v9, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/accountsdk/request/r;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object v2
    :try_end_65
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_40 .. :try_end_65} :catch_73

    :goto_65
    if-nez v2, :cond_68

    goto :goto_7f

    :cond_68
    const-string v0, "data"

    .line 63
    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :catch_73
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->c()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 54
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7f
    :goto_7f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/utils/k;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()Lcom/xiaomi/accountsdk/utils/XMPassportApiRequest$WebMethod;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method
