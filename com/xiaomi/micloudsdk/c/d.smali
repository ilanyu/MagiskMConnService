.class public Lcom/xiaomi/micloudsdk/c/d;
.super Lcom/xiaomi/opensdk/a/c;
.source "SourceFile"


# static fields
.field public static final a:I = -0x2711

.field public static final b:I = 0xcb23

.field public static final c:I = -0x1

.field public static final d:I = 0x3e9

.field public static final e:I = 0x3ea

.field public static final f:I = 0x3eb

.field public static final g:Ljava/lang/String; = "authority"

.field public static final h:Ljava/lang/String; = "time"

.field public static final i:Ljava/lang/String; = "error_code"

.field private static final n:Ljava/lang/String; = "CloudServerException"

.field private static final o:Ljava/lang/String; = "Retry-After"


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 80
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 95
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    .line 96
    iput p2, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    const p1, 0x7fffffff

    .line 97
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 102
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    .line 103
    iput p2, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    mul-int/lit16 p3, p3, 0x3e8

    .line 104
    iput p3, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 85
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    return-void
.end method

.method public constructor <init>(ILjava/net/HttpURLConnection;)V
    .registers 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 109
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    .line 111
    :try_start_16
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_4c

    const-string p1, "Retry-After"

    .line 112
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4c

    const-string p1, "Retry-After"

    .line 113
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_3c} :catch_45
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3c} :catch_3d

    goto :goto_4c

    :catch_3d
    const-string p1, "CloudServerException"

    const-string p2, "Can\'t find retry time in 503 HttpURLConnection response"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catch_45
    const-string p1, "CloudServerException"

    const-string p2, "Can\'t find retry time in 503 HttpURLConnection response"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return-void
.end method

.method public constructor <init>(ILorg/apache/http/HttpResponse;)V
    .registers 5

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 125
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    if-eqz p2, :cond_75

    .line 128
    :try_start_18
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    if-eqz p1, :cond_4c

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_4c

    const-string p1, "Retry-After"

    .line 129
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 130
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 131
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    :cond_4c
    const-string p1, "Date"

    .line 134
    invoke-interface {p2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 136
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_58} :catch_6e

    if-eqz p1, :cond_75

    .line 139
    :try_start_5a
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/micloudsdk/c/d;->m:J
    :try_end_64
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_5a .. :try_end_64} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_64} :catch_6e

    goto :goto_75

    :catch_65
    move-exception p1

    :try_start_66
    const-string p2, "CloudServerException"

    const-string v0, "Error parsing server date"

    .line 142
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_75

    :catch_6e
    const-string p1, "CloudServerException"

    const-string p2, "Can\'t find retry time in 503 HttpURLConnection response"

    .line 148
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    :goto_75
    return-void
.end method

.method public static a(I)Z
    .registers 2

    const/16 v0, 0x190

    if-eq p0, v0, :cond_18

    const/16 v0, 0x191

    if-eq p0, v0, :cond_18

    const/16 v0, 0x193

    if-eq p0, v0, :cond_18

    const/16 v0, 0x196

    if-eq p0, v0, :cond_18

    .line 169
    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x5

    if-ne p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    return v0
.end method

.method public d()Z
    .registers 3

    .line 177
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public e()J
    .registers 3

    .line 181
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_e

    .line 182
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    if-lez v0, :cond_e

    .line 183
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    int-to-long v0, v0

    return-wide v0

    :cond_e
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method
