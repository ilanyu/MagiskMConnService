.class public Lcom/xiaomi/micloudsdk/a;
.super Lcom/xiaomi/micloudsdk/request/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/request/a;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method public static a()Lcom/xiaomi/micloudsdk/a;
    .registers 2

    .line 16
    new-instance v0, Lcom/xiaomi/micloudsdk/a;

    invoke-static {}, Lcom/xiaomi/micloudsdk/a;->c()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/a;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v0
.end method
