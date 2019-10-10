.class Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/client/KscHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    .line 292
    iput p2, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuaipan/android/http/client/KscHttpClient$1;)V
    .registers 4

    .line 285
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .registers 2

    .line 285
    invoke-direct {p0, p1}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 306
    iget v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()Z
    .registers 3

    .line 299
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;)Z
    .registers 1

    .line 285
    invoke-direct {p0}, Lcn/kuaipan/android/http/client/KscHttpClient$LoggingConfiguration;->a()Z

    move-result p0

    return p0
.end method
