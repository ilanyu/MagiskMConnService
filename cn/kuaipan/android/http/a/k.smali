.class public Lcn/kuaipan/android/http/a/k;
.super Lcn/kuaipan/android/http/a/i;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "text/plain"

.field public static final b:Ljava/lang/String; = "US-ASCII"

.field public static final c:Ljava/lang/String; = "8bit"


# instance fields
.field private d:[B

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/http/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "text/plain"

    if-nez p3, :cond_6

    const-string p3, "US-ASCII"

    :cond_6
    const-string v1, "8bit"

    .line 76
    invoke-direct {p0, p1, v0, p3, v1}, Lcn/kuaipan/android/http/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_20

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_18

    .line 85
    iput-object p2, p0, Lcn/kuaipan/android/http/a/k;->u:Ljava/lang/String;

    return-void

    .line 83
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NULs may not be present in string parts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k()[B
    .registers 3

    .line 105
    iget-object v0, p0, Lcn/kuaipan/android/http/a/k;->d:[B

    if-nez v0, :cond_10

    .line 106
    iget-object v0, p0, Lcn/kuaipan/android/http/a/k;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/a/k;->d:[B

    .line 108
    :cond_10
    iget-object v0, p0, Lcn/kuaipan/android/http/a/k;->d:[B

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcn/kuaipan/android/http/a/k;->u:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 147
    invoke-super {p0, p1}, Lcn/kuaipan/android/http/a/i;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcn/kuaipan/android/http/a/k;->d:[B

    return-void
.end method

.method protected b()J
    .registers 3

    .line 136
    invoke-direct {p0}, Lcn/kuaipan/android/http/a/k;->k()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected b(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcn/kuaipan/android/http/a/k;->k()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
