.class public Lcn/kuaipan/kss/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssDownload$DownloadTransControl;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

.field private d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcn/kuaipan/kss/b/d;->a:I

    .line 101
    iput v0, p0, Lcn/kuaipan/kss/b/d;->b:I

    .line 102
    sget-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcn/kuaipan/kss/b/d;->a:I

    .line 95
    iput v0, p0, Lcn/kuaipan/kss/b/d;->b:I

    .line 96
    sget-object v0, Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 18
    iget v0, p0, Lcn/kuaipan/kss/b/d;->b:I

    return v0
.end method

.method public a(I)I
    .registers 3

    if-gez p1, :cond_3

    return p1

    .line 43
    :cond_3
    iget v0, p0, Lcn/kuaipan/kss/b/d;->a:I

    .line 44
    iput p1, p0, Lcn/kuaipan/kss/b/d;->b:I

    .line 45
    iput p1, p0, Lcn/kuaipan/kss/b/d;->a:I

    return v0
.end method

.method public a([BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    .line 27
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    iget p1, p0, Lcn/kuaipan/kss/b/d;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/kuaipan/kss/b/d;->a:I

    return p2

    .line 24
    :cond_10
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public a(Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/kuaipan/kss/b/d;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    return-void
.end method

.method public a(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcn/kuaipan/kss/b/d;->f()V

    if-nez p2, :cond_e

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 65
    :cond_e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_1f

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/kss/b/d;->a(I)I

    :cond_1f
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcn/kuaipan/kss/b/d;->f()V

    .line 74
    iput-object p1, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public b()Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;
    .registers 2

    .line 50
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->c:Lcn/kuaipan/kss/KssDownload$DownloadTransControl$EndState;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 54
    iget v0, p0, Lcn/kuaipan/kss/b/d;->a:I

    return v0
.end method

.method public d()V
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcn/kuaipan/kss/b/d;->e()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public e()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_e

    .line 85
    :try_start_4
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 86
    iget-object v0, p0, Lcn/kuaipan/kss/b/d;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method
