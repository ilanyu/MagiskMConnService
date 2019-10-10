.class final Lmiui/cloud/net/XPlainTextProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .registers 4

    .line 18
    invoke-static {}, Lmiui/cloud/net/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 19
    new-instance p1, Lmiui/cloud/net/c;

    invoke-direct {p1, p2}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .registers 3

    .line 25
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 26
    new-instance p1, Lmiui/cloud/net/c;

    invoke-direct {p1, p2}, Lmiui/cloud/net/c;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method
