.class public Lcn/kuaipan/android/http/m;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/i;

.field private final b:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final c:Lcn/kuaipan/android/http/KssTransferStopper;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V
    .registers 6

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    iput-object p2, p0, Lcn/kuaipan/android/http/m;->a:Lcn/kuaipan/android/http/i;

    .line 30
    iput-object p3, p0, Lcn/kuaipan/android/http/m;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 31
    iput-object p4, p0, Lcn/kuaipan/android/http/m;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    .line 32
    iput-boolean p5, p0, Lcn/kuaipan/android/http/m;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/m;-><init>(Ljava/io/OutputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    return-void
.end method

.method private a(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/kuaipan/android/http/m;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    invoke-interface {v0}, Lcn/kuaipan/android/http/KssTransferStopper;->a()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 38
    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcn/kuaipan/android/a/g;

    invoke-direct {p2}, Lcn/kuaipan/android/a/g;-><init>()V

    const-string v0, "@ ProcessMonitorOutputStream::process()"

    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1a
    :goto_1a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3c

    .line 42
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->a:Lcn/kuaipan/android/http/i;

    if-eqz v0, :cond_29

    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->a:Lcn/kuaipan/android/http/i;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/http/i;->a(J)V

    .line 45
    :cond_29
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_3c

    .line 46
    iget-boolean v0, p0, Lcn/kuaipan/android/http/m;->d:Z

    if-eqz v0, :cond_37

    .line 47
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->e(J)V

    goto :goto_3c

    .line 49
    :cond_37
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 64
    invoke-direct {p0, v0, v1}, Lcn/kuaipan/android/http/m;->a(J)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcn/kuaipan/android/http/m;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 58
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/http/m;->a(J)V

    return-void
.end method
