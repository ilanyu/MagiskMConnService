.class public Lmiui/cloud/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# static fields
.field public static final a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static b:I = 0x100

.field private static c:Ljava/lang/String; = "application/octet-stream"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/a;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 92
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_24

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "identity"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_24
    const-string v0, "Content-Length"

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_46

    .line 100
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_46

    :cond_35
    const/4 v0, 0x0

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3f

    return v1

    .line 109
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    const/4 p0, -0x1

    :goto_45
    return p0

    :cond_46
    :goto_46
    return v1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lmiui/cloud/net/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lmiui/cloud/net/a;->a(Ljava/util/Map;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_22

    .line 39
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    sget v1, Lmiui/cloud/net/a;->b:I

    new-array v1, v1, [B

    .line 43
    :goto_10
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1a

    .line 45
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10

    .line 49
    :cond_1a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_30

    .line 53
    :cond_22
    new-array v1, p1, [B

    :cond_24
    sub-int v2, p1, v0

    .line 57
    invoke-virtual {p2, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2f

    add-int/2addr v0, v2

    if-ne v0, p1, :cond_24

    :cond_2f
    move-object p1, v1

    :goto_30
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 73
    sget-object p1, Lmiui/cloud/net/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    check-cast p1, [B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    .line 78
    check-cast p1, [B

    .line 79
    array-length p1, p1

    return p1
.end method
