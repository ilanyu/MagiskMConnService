.class public Lcn/kuaipan/android/http/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "KscHttpResponse"


# instance fields
.field private final b:Lcn/kuaipan/android/http/j;

.field private c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/apache/http/HttpResponse;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/j;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/kuaipan/android/http/f;->b:Lcn/kuaipan/android/http/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .registers 2

    .line 61
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method a(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->d()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 43
    iput-object p2, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    .line 45
    invoke-virtual {p1}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lcn/kuaipan/android/http/c;

    move-result-object p1

    .line 46
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz p3, :cond_1e

    .line 49
    iget-object p3, p0, Lcn/kuaipan/android/http/f;->b:Lcn/kuaipan/android/http/j;

    invoke-static {v0, p1, p3}, Lcn/kuaipan/android/http/e;->a(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/c;Lcn/kuaipan/android/http/j;)Lcn/kuaipan/android/http/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_28

    :cond_1e
    if-eqz p1, :cond_28

    .line 51
    new-instance p3, Lcn/kuaipan/android/http/e;

    invoke-direct {p3, v0, p1}, Lcn/kuaipan/android/http/e;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/c;)V

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_28
    :goto_28
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcn/kuaipan/android/http/f;->f:Ljava/lang/Throwable;

    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/HttpMessage;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcn/kuaipan/android/http/f;->d:Ljava/util/List;

    return-void
.end method

.method a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/kuaipan/android/http/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    return-void
.end method

.method public b()Lorg/apache/http/HttpResponse;
    .registers 2

    .line 65
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :goto_d
    if-nez v0, :cond_10

    return-object v1

    .line 74
    :cond_10
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 75
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1f

    .line 76
    :cond_1b
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    if-eqz v1, :cond_2f

    const-string v0, "gzip"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 78
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_30

    :cond_2f
    move-object v0, v2

    :goto_30
    return-object v0
.end method

.method public d()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public e()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 98
    :try_start_d
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_1b
    .catchall {:try_start_d .. :try_end_16} :catchall_19

    .line 104
    :goto_16
    iput-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    goto :goto_29

    :catchall_19
    move-exception v1

    goto :goto_26

    :catch_1b
    move-exception v1

    :try_start_1c
    const-string v2, "KscHttpResponse"

    const-string v3, "Meet exception when release a KscHttpResponse."

    .line 102
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_24
    move-exception v1

    .line 100
    throw v1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    .line 104
    :goto_26
    iput-object v0, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    throw v1

    :cond_29
    :goto_29
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 8

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->d:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    .line 115
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpMessage;

    .line 116
    instance-of v5, v4, Lorg/apache/http/HttpRequest;

    if-eqz v5, :cond_47

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    check-cast v4, Lorg/apache/http/HttpRequest;

    invoke-static {v4}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v3, v6

    goto :goto_11

    .line 119
    :cond_47
    instance-of v5, v4, Lorg/apache/http/HttpResponse;

    if-eqz v5, :cond_11

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    check-cast v4, Lorg/apache/http/HttpResponse;

    invoke-static {v4}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_11

    .line 126
    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_85

    const-string v1, "[Origin Request]\n"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {v1}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpRequest;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 131
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n[Response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->e:Lorg/apache/http/HttpResponse;

    invoke-static {v1}, Lcn/kuaipan/android/utils/d;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->f:Ljava/lang/Throwable;

    if-eqz v1, :cond_b9

    const-string v1, "\n[Error]\n"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcn/kuaipan/android/http/f;->f:Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password=.*&"

    const-string v2, "password=[secData]&"

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
