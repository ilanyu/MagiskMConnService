.class Lmiui/cloud/net/XHttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/net/XHttpClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiui/cloud/common/g;

.field final synthetic b:Lmiui/cloud/net/XHttpClient;


# direct methods
.method constructor <init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/g;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient$1;->b:Lmiui/cloud/net/XHttpClient;

    iput-object p2, p0, Lmiui/cloud/net/XHttpClient$1;->a:Lmiui/cloud/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/cloud/net/XHttpClient$HttpResponse;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient$1;->a:Lmiui/cloud/common/g;

    invoke-virtual {v0, p1}, Lmiui/cloud/common/g;->a(Ljava/lang/Object;)V

    return-void
.end method
