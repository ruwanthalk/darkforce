<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Task_Notification</fullName>
        <description>Task Notification</description>
        <protected>false</protected>
        <recipients>
            <field>User__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Employee_Activity_Assignment</template>
    </alerts>
    <rules>
        <fullName>Task Notification</fullName>
        <actions>
            <name>Task_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Activity__c.Status__c</field>
            <operation>equals</operation>
            <value>Assigned</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
