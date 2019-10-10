.class Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/client/KscHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/http/client/KscHttpClient;


# direct methods
.method private constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;->a:Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuaipan/android/http/client/KscHttpClient;Lcn/kuaipan/android/http/client/KscHttpClient$1;)V
    .registers 3

    .line 341
    invoke-direct {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;-><init>(Lcn/kuaipan/android/http/client/KscHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object p2, p0, Lcn/kuaipan/android/http/client/KscHttpClient$CurlLogger;->a:Lcn/kuaipan/android/http/client/KscHttpClient;

    invoke-static {p2}, Lcn/kuaipan/android/http/client/KscHttpClient;->a(Lcn/kuaipan/android/http/client/KscHttpClient;)Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;

    move-result-object p2

    .line 345
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const-string v2, "CurlLogger"

    .line 346
    move-object v3, p1

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v3, v1}, Lcn/kuaipan/android/http/client/KscHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz p2, :cond_2a

    .line 349
    invoke-static {p2}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_2a

    .line 353
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1, v1}, Lcn/kuaipan/android/http/client/KscHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
