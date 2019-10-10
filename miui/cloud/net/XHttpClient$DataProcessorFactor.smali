.class public Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataProcessorFactor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .registers 3
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
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;"
        }
    .end annotation

    .line 106
    new-instance p1, Lmiui/cloud/net/d;

    invoke-direct {p1}, Lmiui/cloud/net/d;-><init>()V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .registers 3

    .line 101
    new-instance p2, Lmiui/cloud/net/e;

    invoke-direct {p2, p1}, Lmiui/cloud/net/e;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
