.class public Lcn/kuaipan/android/http/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/a/j;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    .line 54
    iput-object v0, p0, Lcn/kuaipan/android/http/a/e;->b:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    if-eqz p1, :cond_2f

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/http/a/e;->b:Ljava/lang/String;

    goto :goto_2f

    .line 70
    :cond_1f
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "File is not readable."

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_27
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "File is not a normal file."

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p2}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/io/File;)V

    if-eqz p1, :cond_7

    .line 87
    iput-object p1, p0, Lcn/kuaipan/android/http/a/e;->b:Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 98
    iget-object v0, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcn/kuaipan/android/http/a/e;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "noname"

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcn/kuaipan/android/http/a/e;->b:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 124
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcn/kuaipan/android/http/a/e;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 126
    :cond_c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
