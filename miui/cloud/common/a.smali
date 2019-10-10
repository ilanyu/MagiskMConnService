.class public Lmiui/cloud/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 3

    .line 13
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const/4 p0, 0x1

    .line 15
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Closing failed. "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public static a(Ljava/io/Flushable;)V
    .registers 3

    .line 21
    :try_start_0
    invoke-static {p0}, Lmiui/cloud/common/a;->b(Ljava/io/Flushable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const/4 p0, 0x1

    .line 23
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Flush failed. "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public static b(Ljava/io/Flushable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    .line 30
    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_10

    .line 31
    check-cast p0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    :cond_10
    return-void
.end method
