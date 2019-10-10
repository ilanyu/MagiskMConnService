.class public Lmiui/cloud/net/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# static fields
.field public static final a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static b:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lmiui/cloud/net/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lmiui/cloud/net/XUrlencodedProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XUrlencodedProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/f;->a:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lmiui/cloud/net/c;

    invoke-direct {v0, p1}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/cloud/net/f;->f:Lmiui/cloud/net/c;

    .line 40
    iput-object p1, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lmiui/cloud/net/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    :try_start_19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_23

    const-string v3, "null"

    .line 81
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    .line 82
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_46} :catch_47

    goto :goto_d

    :catch_47
    move-exception p1

    .line 84
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4e
    const-string p1, "&"

    const/4 v1, 0x0

    .line 88
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    .line 95
    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :goto_d
    array-length v4, v1

    if-ge v3, v4, :cond_6d

    .line 98
    aget-object v4, v1, v3

    const-string v5, "="

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4c

    .line 105
    :try_start_1c
    aget-object v5, v4, v2

    iget-object v6, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    .line 106
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_30} :catch_31

    goto :goto_49

    :catch_31
    const-string v4, "XUrlencodedProcessor"

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encode not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/cloud/net/f;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 100
    :cond_4c
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad input data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", wrong format near: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lmiui/cloud/net/f;->c:Ljava/util/Map;

    if-ne v0, p1, :cond_5

    return-void

    .line 119
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/f;->c:Ljava/util/Map;

    .line 120
    invoke-direct {p0, p1}, Lmiui/cloud/net/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/f;->d:Ljava/lang/String;

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

    .line 47
    iget-object v0, p0, Lmiui/cloud/net/f;->f:Lmiui/cloud/net/c;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/c;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lmiui/cloud/net/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 53
    sget-object p1, Lmiui/cloud/net/f;->b:Ljava/lang/String;

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

    .line 68
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/f;->b(Ljava/util/Map;)V

    .line 69
    iget-object p1, p0, Lmiui/cloud/net/f;->f:Lmiui/cloud/net/c;

    iget-object v0, p0, Lmiui/cloud/net/f;->d:Ljava/lang/String;

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

    .line 60
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/f;->b(Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lmiui/cloud/net/f;->f:Lmiui/cloud/net/c;

    iget-object v0, p0, Lmiui/cloud/net/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/cloud/net/c;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
