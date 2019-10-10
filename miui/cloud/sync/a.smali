.class public final Lmiui/cloud/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SyncInfoHelper"

.field public static final b:I = -0x1

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/cloud/sync/SyncInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    .line 34
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.android.contacts"

    new-instance v2, Lmiui/cloud/sync/providers/ContactsSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/ContactsSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "sms"

    new-instance v2, Lmiui/cloud/sync/providers/SmsSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/SmsSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.miui.gallery.cloud.provider"

    new-instance v2, Lmiui/cloud/sync/providers/GallerySyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/GallerySyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "call_log"

    new-instance v2, Lmiui/cloud/sync/providers/CalllogSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/CalllogSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "notes"

    new-instance v2, Lmiui/cloud/sync/providers/NotesSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/NotesSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "wifi"

    new-instance v2, Lmiui/cloud/sync/providers/WifiSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/WifiSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "records"

    new-instance v2, Lmiui/cloud/sync/providers/SoundRecorderSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/SoundRecorderSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.miui.browser"

    new-instance v2, Lmiui/cloud/sync/providers/BrowserSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/BrowserSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "antispam"

    new-instance v2, Lmiui/cloud/sync/providers/AntispamSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/AntispamSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.android.calendar"

    new-instance v2, Lmiui/cloud/sync/providers/CalendarSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/CalendarSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "personal_assistant"

    new-instance v2, Lmiui/cloud/sync/providers/PersonalAssistantSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/PersonalAssistantSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.android.quicksearchbox.cloud"

    new-instance v2, Lmiui/cloud/sync/providers/QuickSearchBoxProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/QuickSearchBoxProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.miui.player.cloud"

    new-instance v2, Lmiui/cloud/sync/providers/MusicSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/MusicSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "com.miui.player"

    new-instance v2, Lmiui/cloud/sync/providers/MusicSyncInfoProvider;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/MusicSyncInfoProvider;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    const-string v1, "miui.phrase"

    new-instance v2, Lmiui/cloud/sync/providers/a;

    invoke-direct {v2}, Lmiui/cloud/sync/providers/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/sync/b;
        }
    .end annotation

    .line 56
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    if-eqz v0, :cond_f

    .line 61
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getUnsyncedCount(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 58
    :cond_f
    new-instance p0, Lmiui/cloud/sync/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUnsyncedDataCount not implemented on authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/sync/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/sync/b;
        }
    .end annotation

    .line 65
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    if-eqz v0, :cond_f

    .line 70
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getWifiOnlyUnsyncedCount(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 67
    :cond_f
    new-instance p0, Lmiui/cloud/sync/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiOnlyUnsyncedDataCount not implemented on authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/sync/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/sync/b;
        }
    .end annotation

    .line 74
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    if-eqz v0, :cond_f

    .line 79
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getUnSyncedSecretCount(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 76
    :cond_f
    new-instance p0, Lmiui/cloud/sync/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUnsyncedSecretDataCount not implemented on authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/sync/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/sync/b;
        }
    .end annotation

    .line 86
    sget-object v0, Lmiui/cloud/sync/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    if-eqz v0, :cond_f

    .line 91
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getSyncedCount(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 88
    :cond_f
    new-instance p0, Lmiui/cloud/sync/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSyncedDataCount not implemented on authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/sync/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
