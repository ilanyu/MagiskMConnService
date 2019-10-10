.class public Lmiui/cloud/net/e;
.super Lmiui/cloud/net/XAutoAdaptProcessor;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lmiui/cloud/net/e;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 11
    iput-object p1, p0, Lmiui/cloud/net/e;->b:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 7

    .line 36
    iget-object v0, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    return-void

    .line 38
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/cloud/net/e;->a:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 41
    iget-object v4, p0, Lmiui/cloud/net/e;->b:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->a(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 44
    iput-object v3, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    return-void

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 49
    :cond_1d
    new-instance p1, Lmiui/cloud/net/c;

    iget-object v0, p0, Lmiui/cloud/net/e;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lmiui/cloud/net/e;->c(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    .line 31
    invoke-direct {p0, p1}, Lmiui/cloud/net/e;->c(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lmiui/cloud/net/e;->c(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lmiui/cloud/net/e;->d:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/e;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
