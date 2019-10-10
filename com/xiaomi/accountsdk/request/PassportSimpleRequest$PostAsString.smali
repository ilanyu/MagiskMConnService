.class public Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;
.super Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostAsString"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/o;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v2, v0, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v3, v0, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v4, v0, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v5, v0, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-boolean v6, v0, Lcom/xiaomi/accountsdk/request/o;->e:Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v7, v0, Lcom/xiaomi/accountsdk/request/o;->g:Ljava/lang/Integer;

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/accountsdk/request/s;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_20
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_0 .. :try_end_20} :catch_28
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_0 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    .line 86
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/c;)V

    throw v1

    :catch_28
    move-exception v0

    .line 84
    new-instance v1, Lcom/xiaomi/accountsdk/request/p;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/p;-><init>(Lcom/xiaomi/accountsdk/request/a;)V

    throw v1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method
