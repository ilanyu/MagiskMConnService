.class public Lmiui/cloud/net/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# static fields
.field public static final a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static b:Ljava/lang/String; = "text/plain"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Lmiui/cloud/net/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XPlainTextProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/c;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lmiui/cloud/net/a;

    invoke-direct {v0}, Lmiui/cloud/net/a;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/c;->f:Lmiui/cloud/net/a;

    .line 32
    iput-object p1, p0, Lmiui/cloud/net/c;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lmiui/cloud/net/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lmiui/cloud/net/c;->d:Ljava/lang/String;

    if-ne v0, p1, :cond_5

    return-void

    .line 75
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/cloud/net/c;->e:[B

    .line 79
    :try_start_c
    iget-object v0, p0, Lmiui/cloud/net/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/c;->e:[B
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    .line 81
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
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
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lmiui/cloud/net/c;->f:Lmiui/cloud/net/a;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/a;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 44
    :try_start_8
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lmiui/cloud/net/c;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object p2

    :catch_10
    move-exception p1

    .line 46
    new-instance p2, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {p2, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 54
    sget-object p1, Lmiui/cloud/net/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/net/c;->a(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lmiui/cloud/net/c;->f:Lmiui/cloud/net/a;

    iget-object v0, p0, Lmiui/cloud/net/c;->e:[B

    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/cloud/net/c;->a(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lmiui/cloud/net/c;->e:[B

    array-length p1, p1

    return p1
.end method
