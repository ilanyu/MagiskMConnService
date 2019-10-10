.class public Lcom/xiaomi/micloudsdk/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/micloudsdk/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/d/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/micloudsdk/d/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/micloudsdk/d/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/a/d;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/d/b;->a(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/a/d;",
            "Lcom/xiaomi/opensdk/file/a/e;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_82

    if-eqz p1, :cond_7a

    if-eqz p2, :cond_7a

    .line 58
    new-instance v0, Lcom/xiaomi/opensdk/file/a/h;

    invoke-direct {v0, p2, p3, p4}, Lcom/xiaomi/opensdk/file/a/h;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    .line 59
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Lcom/xiaomi/opensdk/file/a/h;)V

    const/4 p2, 0x0

    .line 62
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/a/h;->g()Z

    move-result p3

    if-eqz p3, :cond_5c

    const/4 p3, 0x5

    if-ge p2, p3, :cond_5c

    .line 64
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/a/c;->b(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/g;

    move-result-object p3

    .line 66
    iget-object p4, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/g;)Lorg/json/JSONObject;

    move-result-object p3

    .line 67
    iget-object p4, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {p4, p1, p3}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_5b

    const-string p4, "data"

    .line 69
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 70
    iget-object p4, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/xiaomi/opensdk/file/a/c;->b(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/i;

    move-result-object p3

    .line 73
    invoke-virtual {v0, p3}, Lcom/xiaomi/opensdk/file/a/h;->a(Lcom/xiaomi/opensdk/file/a/i;)V

    .line 74
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Lcom/xiaomi/opensdk/file/a/h;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_5b
    return-object p4

    .line 81
    :cond_5c
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaomi/opensdk/file/a/c;->c(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/a;

    move-result-object p2

    .line 82
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/a/a;)Lorg/json/JSONObject;

    move-result-object p2

    .line 83
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/micloudsdk/d/d;->b(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_72} :catch_73

    return-object p1

    :catch_73
    move-exception p1

    .line 85
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 56
    :cond_7a
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_82
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "Upload is forbidden by injector"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/a/d;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/micloudsdk/d/b;->b(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Lcom/xiaomi/opensdk/file/a/d;",
            "Lcom/xiaomi/opensdk/file/a/e;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/d/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz p2, :cond_39

    .line 118
    :try_start_a
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/d/d;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/d/b;->b:Lcom/xiaomi/micloudsdk/d/d;

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/micloudsdk/d/d;->c(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "data"

    .line 120
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/file/a/c;->d(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/b;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_31} :catch_32

    :cond_31
    return-void

    :catch_32
    move-exception p1

    .line 125
    new-instance p2, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 115
    :cond_39
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_41
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "Upload is forbidden by injector"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
