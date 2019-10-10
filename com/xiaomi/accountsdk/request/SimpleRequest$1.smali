.class final Lcom/xiaomi/accountsdk/request/SimpleRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/request/SimpleRequest$HttpURLConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c()Lcom/xiaomi/accountsdk/request/e;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 76
    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c()Lcom/xiaomi/accountsdk/request/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/request/e;->a(Ljava/net/URL;)V

    .line 78
    :cond_d
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method
