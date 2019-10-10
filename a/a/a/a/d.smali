.class La/a/a/a/d;
.super La/a/a/a/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, La/a/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 8
    invoke-static {}, Lmiui/cloud/content/MiSyncPolicyResolver;->SYNC_EXTRAS_MICLOUD_FORCE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
