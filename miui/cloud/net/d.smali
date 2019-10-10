.class public Lmiui/cloud/net/d;
.super Lmiui/cloud/net/XAutoAdaptProcessor;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "text/plain"

    const-string v1, "utf-8"

    const-string v2, "Content-Type"

    .line 39
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3c

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v0, 0x0

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, ";"

    .line 43
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3c

    .line 48
    aget-object p1, p1, v3

    const-string v2, "="

    .line 50
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 51
    array-length v2, p1

    if-le v2, v3, :cond_3c

    .line 52
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_3c
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
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

    .line 19
    invoke-direct {p0, p1}, Lmiui/cloud/net/d;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 21
    sget-object v1, Lmiui/cloud/net/d;->a:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 22
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 25
    invoke-interface {v4, p1, p2}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 28
    :cond_22
    new-instance v1, Lmiui/cloud/net/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lmiui/cloud/net/c;->a(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
