.class public Lmiui/cloud/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# static fields
.field public static final a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static b:Ljava/lang/String; = "application/json"


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Lmiui/cloud/net/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lmiui/cloud/net/XJSONProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XJSONProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/b;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lmiui/cloud/net/c;

    invoke-direct {v0, p1}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/cloud/net/b;->e:Lmiui/cloud/net/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 75
    new-instance v1, Lmiui/cloud/net/XHttpClient$DataConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object v0, Lmiui/cloud/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/Object;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lmiui/cloud/net/b;->c:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    return-void

    .line 83
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/b;->c:Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p1}, Lmiui/cloud/net/b;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/b;->d:Ljava/lang/String;

    return-void
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

    .line 42
    iget-object v0, p0, Lmiui/cloud/net/b;->e:Lmiui/cloud/net/c;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/c;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lmiui/cloud/net/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 48
    sget-object p1, Lmiui/cloud/net/b;->b:Ljava/lang/String;

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

    .line 61
    invoke-direct {p0, p1}, Lmiui/cloud/net/b;->d(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lmiui/cloud/net/b;->e:Lmiui/cloud/net/c;

    iget-object v0, p0, Lmiui/cloud/net/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/c;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lmiui/cloud/net/b;->d(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lmiui/cloud/net/b;->e:Lmiui/cloud/net/c;

    iget-object v0, p0, Lmiui/cloud/net/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/cloud/net/c;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
