.class abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/l;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/f;
.source "SourceFile"


# static fields
.field protected static final b:Ljava/lang/String; = "\r\n"

.field protected static final j:Ljava/lang/String; = "--"

.field protected static final k:Ljava/lang/String; = "*****"


# instance fields
.field protected a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/j;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;-><init>()V

    if-eqz p1, :cond_8

    .line 18
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/l;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/j;

    return-void

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The file should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/d;
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 33
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_14
    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "POST"

    return-object v0
.end method
