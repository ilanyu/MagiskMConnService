.class public Lmiui/cloud/sync/providers/a;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "miui.phrase"

.field private static final b:Ljava/lang/String; = "PhraseSyncInfoProvider"


# instance fields
.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    const-string v0, "content://miui.phrase/phrase/synced"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/sync/providers/a;->c:Landroid/net/Uri;

    const-string v0, "content://miui.phrase/phrase/unsynced"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmiui/cloud/sync/providers/a;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 17
    iget-object v0, p0, Lmiui/cloud/sync/providers/a;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/a;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 22
    iget-object v0, p0, Lmiui/cloud/sync/providers/a;->d:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/a;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
