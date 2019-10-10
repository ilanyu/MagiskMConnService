.class final Lmiui/cloud/net/XByteArrayProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .registers 3

    .line 19
    invoke-static {}, Lmiui/cloud/net/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 20
    new-instance p1, Lmiui/cloud/net/a;

    invoke-direct {p1}, Lmiui/cloud/net/a;-><init>()V

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .registers 3

    .line 26
    instance-of p1, p1, [B

    if-eqz p1, :cond_a

    .line 27
    new-instance p1, Lmiui/cloud/net/a;

    invoke-direct {p1}, Lmiui/cloud/net/a;-><init>()V

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method
