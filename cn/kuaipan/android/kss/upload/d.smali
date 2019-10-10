.class public Lcn/kuaipan/android/kss/upload/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# static fields
.field private static final Z:Ljava/lang/String; = "ServerExpect"

.field private static final aa:Ljava/lang/String; = "X-Factory-Mode"

.field private static final ab:Ljava/lang/String; = "X-Upload-Delay"

.field private static final ac:Ljava/lang/String; = "X-Next-Chunk-Size"

.field private static final ad:I = 0x12c


# instance fields
.field public W:Z

.field public X:I

.field public Y:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/d;->W:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcn/kuaipan/android/kss/upload/d;->X:I

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    return-void
.end method

.method private static a(Lorg/apache/http/Header;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 71
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_24

    :catch_e
    const-string v1, "ServerExpect"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parser header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return v0
.end method

.method public static a(Lcn/kuaipan/android/http/f;)Lcn/kuaipan/android/kss/upload/d;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object p0, v0

    goto :goto_9

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcn/kuaipan/android/http/f;->b()Lorg/apache/http/HttpResponse;

    move-result-object p0

    :goto_9
    if-nez p0, :cond_c

    return-object v0

    .line 30
    :cond_c
    new-instance v1, Lcn/kuaipan/android/kss/upload/d;

    invoke-direct {v1}, Lcn/kuaipan/android/kss/upload/d;-><init>()V

    const-string v2, "X-Factory-Mode"

    .line 32
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_25

    .line 35
    invoke-static {v2}, Lcn/kuaipan/android/kss/upload/d;->a(Lorg/apache/http/Header;)I

    move-result v2

    if-ne v2, v4, :cond_22

    const/4 v3, 0x1

    :cond_22
    iput-boolean v3, v1, Lcn/kuaipan/android/kss/upload/d;->W:Z

    const/4 v3, 0x1

    :cond_25
    const-string v2, "X-Upload-Delay"

    .line 37
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 40
    invoke-static {v2}, Lcn/kuaipan/android/kss/upload/d;->a(Lorg/apache/http/Header;)I

    move-result v2

    iput v2, v1, Lcn/kuaipan/android/kss/upload/d;->X:I

    const/4 v3, 0x1

    :cond_34
    const-string v2, "X-Next-Chunk-Size"

    .line 42
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 45
    invoke-static {p0}, Lcn/kuaipan/android/kss/upload/d;->a(Lorg/apache/http/Header;)I

    move-result p0

    int-to-long v2, p0

    iput-wide v2, v1, Lcn/kuaipan/android/kss/upload/d;->Y:J

    const/4 v3, 0x1

    :cond_44
    if-eqz v3, :cond_47

    move-object v0, v1

    :cond_47
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 52
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_25

    .line 53
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    iget-wide v2, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    const-wide/32 v4, 0x10000

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    .line 54
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    sget-wide v2, Lcn/kuaipan/android/kss/upload/d;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    .line 55
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/d;->Y:J

    .line 58
    :cond_25
    iget v0, p0, Lcn/kuaipan/android/kss/upload/d;->X:I

    if-lez v0, :cond_37

    .line 59
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/upload/d;->W:Z

    if-nez v0, :cond_37

    .line 60
    iget v0, p0, Lcn/kuaipan/android/kss/upload/d;->X:I

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/kuaipan/android/kss/upload/d;->X:I

    :cond_37
    return-void
.end method
