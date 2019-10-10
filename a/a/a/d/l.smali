.class La/a/a/d/l;
.super La/a/a/d/k;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, La/a/a/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SyncResult;Ljava/lang/String;)V
    .registers 3

    .line 9
    invoke-static {p1, p2}, Lmiui/cloud/content/SyncResult;->setMiSyncResultMessage(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method
