/* 20231214
�ε���(����)
    - ������ �˻� �ӵ��� ����Ű�� ���ؼ� ���Ǵ� �����ͺ��̽� ��ü
    - �÷��� ���� ROWID(������ ������ġ ����)�� ����Ǿ� ����
      * ROWID: ���������� ����� ���Ϲ�ȣ/���Ϲ�ȣ/���Թ�ȣ�� ����
    - ���̺��� ���������� �����ϰ�, �ѹ� ������ �ε����� �ڵ����� ������
    
�ε��� ����
    1. �ڵ�����
        - PRIMARY KEY, UNIQUE ���������� ����� �÷��� �ڵ����� �ε����� ������
    2. ��������
        - WHERE���� ���ǽ����� ���� �����ϴ� �÷��� ��ȸ ������ ����Ű�� ����
          �ش� �÷��� ���� �ε����� ������ �� ����

�ε��� ������ ������ ���
    1. WHERE���� ���ǽ����� ���� �����ϴ� ���
    2. �÷��� �ſ� �پ��� ���� �����ϴ� ���
    3. �����Ͱ� �ſ� ���� ���̺��� ������� ������ ��ȸ ��,
       ��ȸ�۾��� �� ������ ��ü �������� 2% �̸��� ��ȸ�Ǵ� ���
*/

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 200;

-- �ε��� �����ϱ�
CREATE INDEX EMP_FIRSTNAME_IDX
ON EMPLOYEES (FIRST_NAME);

SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'Neena';

SELECT *
FROM EMPLOYEES
WHERE LOWER(FIRST_NAME) = LOWER('neena'); -- LOWER(FIRST_NAME)���δ� ������ ����������� �ʱ� ������ ���� ��� �ȵ� -> �º� ���� ����
